import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/app_state.dart';
import '../utils/formatos.dart';
import '../utils/constantes.dart';
import 'package:mi_pulperia/database/database.dart';
import '../models/producto.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // Sincronizar al iniciar
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(syncServiceProvider).sincronizarTodo();
    });
  }

  Future<void> _recargar() async {
    await ref.read(syncServiceProvider).sincronizarTodo();
    ref.read(resumenDiaProvider.notifier).recargar();
  }

  @override
  Widget build(BuildContext context) {
    final resumen = ref.watch(resumenDiaProvider);
    final productosAsync = ref.watch(productosDisponiblesProvider);

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: RefreshIndicator(
        onRefresh: _recargar,
        child: CustomScrollView(
          slivers: [
            // App Bar personalizada
            SliverAppBar(
              expandedHeight: 120,
              floating: true,
              pinned: true,
              backgroundColor: const Color(0xFF2E7D32),
              flexibleSpace: FlexibleSpaceBar(
                title: const Text(
                  'Mi Pulpería',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                background: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF388E3C), Color(0xFF2E7D32)],
                    ),
                  ),
                ),
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.sync, color: Colors.white),
                  onPressed: _recargar,
                ),
              ],
            ),

            // Contenido principal
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Fecha y ubicación
                    Row(
                      children: [
                        const Icon(Icons.location_on, size: 16, color: Colors.grey),
                        const SizedBox(width: 4),
                        Text(
                          'Rivas Centro | ${Formatos.fecha(DateTime.now())}',
                          style: const TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Tarjeta de resumen
                    _TarjetaResumen(resumen: resumen),
                    const SizedBox(height: 20),

                    // Alertas
                    if (resumen.tieneAlertas) ...[
                      _SeccionAlertas(resumen: resumen),
                      const SizedBox(height: 20),
                    ],

                    // Accesos rápidos
                    const Text(
                      'Accesos Rápidos',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    _GridAccesosRapidos(),
                    const SizedBox(height: 24),

                    // Estado de productos
                    const Text(
                      'Catálogo de Productos',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    productosAsync.when(
                      data: (productos) => _ListaProductos(productos: productos),
                      loading: () => const Center(child: CircularProgressIndicator()),
                      error: (err, _) => Text('Error: $err'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============== WIDGETS INTERNOS ==============

class _TarjetaResumen extends StatelessWidget {
  final ResumenDiaState resumen;

  const _TarjetaResumen({required this.resumen});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Ventas Hoy',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              if (resumen.isLoading)
                const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            Formatos.moneda(resumen.totalVentas),
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2E7D32),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              _IndicadorPago(
                label: 'Contado',
                monto: resumen.totalContado,
                porcentaje: resumen.porcentajeContado,
                color: Colors.green,
              ),
              const SizedBox(width: 24),
              _IndicadorPago(
                label: 'Crédito',
                monto: resumen.totalCredito,
                porcentaje: resumen.porcentajeCredito,
                color: Colors.orange,
              ),
            ],
          ),
          const Divider(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _DatoChico(
                label: 'Ganancia Est.',
                valor: Formatos.moneda(resumen.gananciaEstimada),
              ),
              _DatoChico(
                label: 'Transacciones',
                valor: '${resumen.cantidadTransacciones}',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _IndicadorPago extends StatelessWidget {
  final String label;
  final double monto;
  final double porcentaje;
  final Color color;

  const _IndicadorPago({
    required this.label,
    required this.monto,
    required this.porcentaje,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 4),
          Text(
            Formatos.moneda(monto),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 2),
          Container(
            height: 4,
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(2),
            ),
            child: FractionallySizedBox(
              widthFactor: (porcentaje / 100).clamp(0.0, 1.0),
              alignment: Alignment.centerLeft,
              child: Container(
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DatoChico extends StatelessWidget {
  final String label;
  final String valor;

  const _DatoChico({required this.label, required this.valor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[600],
          ),
        ),
        Text(
          valor,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class _SeccionAlertas extends StatelessWidget {
  final ResumenDiaState resumen;

  const _SeccionAlertas({required this.resumen});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.red[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.red[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.warning_amber, color: Colors.red[700], size: 20),
              const SizedBox(width: 8),
              Text(
                'Alertas',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red[700],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          if (resumen.fiadosVencidos > 0)
            _ItemAlerta(
              icon: Icons.money_off,
              texto: '${resumen.fiadosVencidos} créditos vencidos',
            ),
          if (resumen.carteraPendiente > 5000)
            _ItemAlerta(
              icon: Icons.account_balance_wallet,
              texto: 'Cartera pendiente: ${Formatos.moneda(resumen.carteraPendiente)}',
            ),
        ],
      ),
    );
  }
}

class _ItemAlerta extends StatelessWidget {
  final IconData icon;
  final String texto;

  const _ItemAlerta({required this.icon, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        children: [
          Icon(icon, size: 16, color: Colors.red[600]),
          const SizedBox(width: 8),
          Text(
            texto,
            style: TextStyle(color: Colors.red[800], fontSize: 13),
          ),
        ],
      ),
    );
  }
}

class _GridAccesosRapidos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 1,
      children: [
        _BotonAcceso(
          icono: Icons.add_shopping_cart,
          label: 'Nueva\nVenta',
          color: const Color(0xFF2E7D32),
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(builder: (_) => const VentaScreen()));
          },
        ),
        _BotonAcceso(
          icono: Icons.scale,
          label: 'Cierre\nDía',
          color: const Color(0xFF1565C0),
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(builder: (_) => const InventarioScreen()));
          },
        ),
        _BotonAcceso(
          icono: Icons.people,
          label: 'Nuevo\nFiado',
          color: const Color(0xFF6A1B9A),
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(builder: (_) => const NuevoFiadoScreen()));
          },
        ),
      ],
    );
  }
}

class _BotonAcceso extends StatelessWidget {
  final IconData icono;
  final String label;
  final Color color;
  final VoidCallback onTap;

  const _BotonAcceso({
    required this.icono,
    required this.label,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      elevation: 2,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: color.withOpacity(0.2)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icono, color: color, size: 32),
              const SizedBox(height: 8),
              Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: color,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ListaProductos extends StatelessWidget {
  final List<Producto> productos;

  const _ListaProductos({required this.productos});

  @override
  Widget build(BuildContext context) {
    if (productos.isEmpty) {
      return const Center(child: Text('No hay productos cargados'));
    }

    // Agrupar por categoría
    final porCategoria = <String, List<Producto>>{};
    for (final p in productos) {
      porCategoria.putIfAbsent(p.categoria, () => []).add(p);
    }

    return Column(
      children: porCategoria.entries.map((entry) {
        return ExpansionTile(
          title: Text(
            entry.key.toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          children: entry.value.map((p) {
            return ListTile(
              dense: true,
              title: Text(p.nombre),
              subtitle: Text(p.marca),
              trailing: Text(
                p.tipoMedida == 'peso' ? 'qq/lb' : 
                p.tipoMedida == 'volumen' ? 'L/ml' : 'unidad',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12,
                ),
              ),
            );
          }).toList(),
        );
      }).toList(),
    );
  }
}