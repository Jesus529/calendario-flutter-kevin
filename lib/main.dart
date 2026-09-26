import 'package:flutter/material.dart';

void main() {
  runApp(const MiCalendarioApp());
}

class MiCalendarioApp extends StatelessWidget {
  const MiCalendarioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calendario Kevin',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Arial',
      ),
      home: const Calendario(),
    );
  }
}

class Calendario extends StatelessWidget {
  const Calendario({super.key});

  // FOTO DE PERFIL
  static const String fotoPerfil =
      'https://i.pinimg.com/736x/b6/57/67/b65767c38900fedec6724de0f6c5a4a6.jpg';

  @override
  Widget build(BuildContext context) {
    final List<String> dias = [
      '',
      '',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '10',
      '11',
      '12',
      '13',
      '14',
      '15',
      '16',
      '17',
      '18',
      '19',
      '20',
      '21',
      '22',
      '23',
      '24',
      '25',
      '26',
      '27',
      '28',
      '29',
      '30',
      '',
      '',
      '',
    ];

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF0B0714),
              Color(0xFF180D2B),
              Color(0xFF291044),
              Color(0xFF10091D),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final bool pequeno =
                  constraints.maxWidth < 600;

              return SingleChildScrollView(
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: 900,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: pequeno ? 14 : 28,
                        vertical: 22,
                      ),
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                        
                          // PERFIL
                       
                          _perfil(pequeno),

                          const SizedBox(height: 30),

                         
                          // TITULO
           
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'MI CALENDARIO',
                                      style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 12,
                                        fontWeight:
                                            FontWeight.bold,
                                        letterSpacing: 2,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Septiembre 2026',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 27,
                                        fontWeight:
                                            FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              _flecha(Icons.chevron_left),
                              const SizedBox(width: 5),
                              _flecha(Icons.chevron_right),
                            ],
                          ),

                          const SizedBox(height: 18),

                          // CALENDARIO
                      
                          _calendario(dias),

                          const SizedBox(height: 30),

                     
                          // EVENTOS
                       
                          Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  'Próximos eventos',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(
                                  horizontal: 11,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xFF9D4EDD)
                                          .withOpacity(0.20),
                                  borderRadius:
                                      BorderRadius.circular(20),
                                  border: Border.all(
                                    color:
                                        const Color(0xFF9D4EDD)
                                            .withOpacity(0.35),
                                  ),
                                ),
                                child: const Text(
                                  '4 eventos',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 14),

                          _evento(
                            '05',
                            'Tarea de Programación',
                            '10:00 AM',
                            Icons.code,
                            const Color(0xFF6C63FF),
                          ),

                          _evento(
                            '12',
                            'Examen de Desarrollo',
                            '09:00 AM',
                            Icons.school,
                            const Color(0xFFFFA62B),
                          ),

                          _evento(
                            '18',
                            'Proyecto Flutter',
                            '02:30 PM',
                            Icons.phone_android,
                            const Color(0xFF20C997),
                          ),

                          _evento(
                            '25',
                            'Entrega de proyecto',
                            '11:00 AM',
                            Icons.assignment_turned_in,
                            const Color(0xFFB45EFF),
                          ),

                          const SizedBox(height: 18),

                       
                          // BOTONES
                      
                          if (pequeno)
                            Column(
                              children: [
                                _boton(
                                  Icons.add,
                                  'Agregar evento',
                                  const Color(0xFF7B2CBF),
                                ),
                                const SizedBox(height: 10),
                                _boton(
                                  Icons.calendar_month,
                                  'Ver calendario',
                                  const Color(0xFF9D4EDD),
                                ),
                              ],
                            )
                          else
                            Row(
                              children: [
                                Expanded(
                                  child: _boton(
                                    Icons.add,
                                    'Agregar evento',
                                    const Color(0xFF7B2CBF),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: _boton(
                                    Icons.calendar_month,
                                    'Ver calendario',
                                    const Color(0xFF9D4EDD),
                                  ),
                                ),
                              ],
                            ),

                          const SizedBox(height: 30),

                          // FIRMA
                        
                          const Center(
                            child: Text(
                              'KEVIN VARGAS • 2026',
                              style: TextStyle(
                                color: Colors.white38,
                                fontSize: 11,
                                letterSpacing: 2,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          const SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  // PERFIL
  Widget _perfil(bool pequeno) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(pequeno ? 14 : 20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.06),
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: Colors.white.withOpacity(0.10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 25,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        children: [
          // FOTO
          Container(
            width: pequeno ? 65 : 80,
            height: pequeno ? 65 : 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFFC77DFF),
                width: 3,
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF9D4EDD)
                      .withOpacity(0.45),
                  blurRadius: 20,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: ClipOval(
              child: Image.network(
                fotoPerfil,
                fit: BoxFit.cover,
                webHtmlElementStrategy:
                    WebHtmlElementStrategy.prefer,
                errorBuilder:
                    (context, error, stackTrace) {
                  return Container(
                    color: const Color(0xFF7B2CBF),
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 40,
                    ),
                  );
                },
              ),
            ),
          ),

          const SizedBox(width: 15),

          // NOMBRE
          const Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text(
                  'BIENVENIDO',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 11,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'KEVIN VARGAS',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  'Organiza tu tiempo',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 8),

          // NOTIFICACION
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.07),
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Icon(
              Icons.notifications_none,
              color: Colors.white70,
              size: 22,
            ),
          ),
        ],
      ),
    );
  }

  // CALENDARIO
  Widget _calendario(List<String> dias) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFFDFBFF),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.30),
            blurRadius: 25,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          // DIAS DE LA SEMANA
          Row(
            children: [
              for (final dia in [
                'L',
                'M',
                'X',
                'J',
                'V',
                'S',
                'D',
              ])
                Expanded(
                  child: Center(
                    child: Text(
                      dia,
                      style: const TextStyle(
                        color: Color(0xFF7B2CBF),
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
            ],
          ),

          const SizedBox(height: 10),

          Divider(
            color: Colors.grey.shade200,
            height: 1,
          ),

          const SizedBox(height: 10),

          GridView.builder(
            shrinkWrap: true,
            physics:
                const NeverScrollableScrollPhysics(),
            itemCount: dias.length,
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              crossAxisSpacing: 6,
              mainAxisSpacing: 6,
              childAspectRatio: 1.05,
            ),
            itemBuilder: (context, index) {
              final dia = dias[index];

              if (dia.isEmpty) {
                return const SizedBox();
              }

              final numero = int.parse(dia);

              final bool hoy = numero == 26;

              final bool evento =
                  numero == 5 ||
                  numero == 12 ||
                  numero == 18 ||
                  numero == 25;

              return Container(
                decoration: BoxDecoration(
                  gradient: hoy
                      ? const LinearGradient(
                          colors: [
                            Color(0xFF7B2CBF),
                            Color(0xFFC77DFF),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        )
                      : null,
                  color: hoy
                      ? null
                      : evento
                          ? const Color(0xFFF3E8FF)
                          : const Color(0xFFF7F6F9),
                  borderRadius:
                      BorderRadius.circular(12),
                  border: Border.all(
                    color: hoy
                        ? Colors.transparent
                        : evento
                            ? const Color(0xFFD8B4FE)
                            : Colors.grey.shade200,
                  ),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Text(
                        dia,
                        style: TextStyle(
                          color: hoy
                              ? Colors.white
                              : Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),

                    if (evento)
                      Positioned(
                        bottom: 5,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Container(
                            width: 5,
                            height: 5,
                            decoration:
                                const BoxDecoration(
                              color: Color(0xFF9D4EDD),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  // EVENTO
  Widget _evento(
    String dia,
    String titulo,
    String hora,
    IconData icono,
    Color color,
  ) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.07),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Colors.white.withOpacity(0.08),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: color.withOpacity(0.13),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(
              icono,
              color: color,
              size: 24,
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Septiembre $dia • $hora',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white54,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 5),

          const Icon(
            Icons.chevron_right,
            color: Colors.white38,
          ),
        ],
      ),
    );
  }

  // BOTON

  Widget _boton(
    IconData icon,
    String texto,
    Color color,
  ) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color,
            color.withOpacity(0.75),
          ],
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.25),
            blurRadius: 15,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 19,
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              texto,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // FLECHAS
  // ============================================================
  Widget _flecha(IconData icon) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.07),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.white.withOpacity(0.08),
        ),
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        onPressed: () {},
        icon: Icon(
          icon,
          color: Colors.white70,
          size: 20,
        ),
      ),
    );
  }
}