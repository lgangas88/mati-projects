import 'package:flutter/material.dart';

class Article {
  final String title;
  final String author;
  final DateTime createdAt;
  final String description;
  final List<String> comments;
  final List<String> reactions;

  Article({
    required this.title,
    required this.author,
    required this.createdAt,
    required this.description,
    required this.comments,
    required this.reactions,
  });
}

class CommentsPage extends StatelessWidget {
  CommentsPage({super.key});

  final List<Article> _articles = [
    // Ejemplo 1: Artículo viral con muchas reacciones positivas
    Article(
      title: "10 trucos de productividad que cambiarán tu vida",
      author: "Pedro Martínez",
      createdAt: DateTime(2024, 1, 15),
      description: "Técnicas probadas para maximizar tu tiempo",
      comments: ["¡Genial!", "Me ayudó mucho", "Compartiendo con todos"],
      reactions: ["👍", "👍", "👍", "❤️", "❤️", "🔥", "🔥", "🔥"],
    ),
    // Ejemplo 2: Tutorial muy popular
    Article(
      title: "Cómo aprender a programar en 30 días",
      author: "Ana Rodríguez",
      createdAt: DateTime(2024, 2, 20),
      description: "Ruta de aprendizaje completa para principiantes",
      comments: ["¡Lo logré!", "Día 15 y voy bien", "Excelente guía"],
      reactions: ["👍", "👍", "👍", "👍", "❤️", "❤️", "🚀", "🚀"],
    ),
    // Ejemplo 3: Receta que encanta
    Article(
      title: "Las mejores galletas de chocolate",
      author: "María González",
      createdAt: DateTime(2024, 3, 10),
      description: "Receta secreta de la abuela",
      comments: ["¡Las mejores!", "Ni mi abuela hace mejores", "Repetiré seguro"],
      reactions: ["❤️", "❤️", "❤️", "❤️", "❤️", "👍", "😋", "😋", "😋"],
    ),
    // Ejemplo 4: Artículo polémico
    Article(
      title: "Por qué el trabajo remoto no es para todos",
      author: "Carlos Torres",
      createdAt: DateTime(2024, 4, 5),
      description: "Una visión honesta de los desafíos del teletrabajo",
      comments: ["Totalmente de acuerdo", "No estoy convencido", "Buen punto de vista"],
      reactions: ["👍", "👍", "👎", "👎", "🤔", "🤔", "💭"],
    ),
    // Ejemplo 5: Guía de viaje muy útil
    Article(
      title: "Presupuesto mensual para viajeros en Europa",
      author: "Laura Jiménez",
      createdAt: DateTime(2024, 5, 12),
      description: "Cómo viajar sin gastar una fortuna",
      comments: ["¡Justo lo que buscaba!", "Anotado para mi viaje", "Muy práctico"],
      reactions: ["💰", "💰", "✈️", "✈️", "✈️", "👍", "👍", "❤️"],
    ),
    // Ejemplo 6: Artículo motivacional
    Article(
      title: "Superando el burnout: Mi historia personal",
      author: "Diego Herrera",
      createdAt: DateTime(2024, 6, 8),
      description: "Cómo recuperé mi pasión y energía",
      comments: ["Me identifico tanto", "Gracias por compartir", "¡Fuerza!"],
      reactions: ["❤️", "❤️", "❤️", "❤️", "🤗", "🤗", "💪", "💪", "👍"],
    ),
    // Ejemplo 7: Tutorial técnico avanzado
    Article(
      title: "Optimización de aplicaciones Flutter",
      author: "Miguel Ángel",
      createdAt: DateTime(2024, 7, 22),
      description: "Técnicas para mejorar el rendimiento",
      comments: ["¡Muy completo!", "Necesitaba esto", "¡Experto nivel!"],
      reactions: ["🔥", "🔥", "🔥", "🔥", "👍", "👍", "👍", "🧠", "🚀"],
    ),
    // Ejemplo 8: Reseña de producto
    Article(
      title: "iPhone 15 Pro: ¿Vale la pena el upgrade?",
      author: "Patricia Morales",
      createdAt: DateTime(2024, 8, 30),
      description: "Análisis completo después de 3 meses de uso",
      comments: ["Excelente reseña", "Decidido a comprarlo", "Objetivo y honesto"],
      reactions: ["👍", "👍", "❤️", "❤️", "📱", "📱", "📱", "💰", "💰"],
    ),
    // Ejemplo 9: Artículo humorístico
    Article(
      title: "Los 10 peores momentos de todo programador",
      author: "Roberto Díaz",
      createdAt: DateTime(2024, 9, 14),
      description: "Situaciones que solo los devs entienden",
      comments: ["¡Jajaja tan real!", "Me pasó ayer", "¡Somos así!"],
      reactions: ["😂", "😂", "😂", "😂", "😂", "👍", "👍", "💻", "💻"],
    ),
    // Ejemplo 10: Guía de salud
    Article(
      title: "Rutina de ejercicios para personas ocupadas",
      author: "Carmen Vargas",
      createdAt: DateTime(2024, 10, 8),
      description: "Mantente en forma con solo 20 minutos diarios",
      comments: ["¡Perfecto para mí!", "Ya lo estoy haciendo", "Resultados visibles"],
      reactions: ["💪", "💪", "💪", "💪", "❤️", "❤️", "👍", "🏃‍♀️", "🏃‍♀️"],
    ),
    // Ejemplo 11: Análisis financiero
    Article(
      title: "Cómo empezar a invertir con poco dinero",
      author: "Javier Castro",
      createdAt: DateTime(2024, 11, 3),
      description: "Guía para principiantes en el mundo de las inversiones",
      comments: ["Muy claro", "Gracias por los consejos", "Por fin entiendo"],
      reactions: ["💰", "💰", "💰", "📈", "📈", "👍", "👍", "🧠", "💡"],
    ),
    // Ejemplo 12: Artículo creativo
    Article(
      title: "30 ideas para posts virales en redes sociales",
      author: "Natalia Ortiz",
      createdAt: DateTime(2024, 12, 1),
      description: "Contenido que engancha y comparte",
      comments: ["¡Geniales ideas!", "Ya usé varias", "Me salvaste"],
      reactions: ["🔥", "🔥", "🔥", "🔥", "🔥", "💡", "💡", "👍", "👍", "❤️"],
    ),
    // Ejemplo 13: Tutorial de DIY
    Article(
      title: "Construye tu propio escritorio por menos de \$50",
      author: "Alberto Reyes",
      createdAt: DateTime(2024, 1, 25),
      description: "Proyecto fácil y económico para tu home office",
      comments: ["¡Lo haré!", "Excelente tutorial", "Mi escritorio quedó perfecto"],
      reactions: ["👍", "👍", "👍", "🔨", "🔨", "💰", "💰", "❤️", "🏠"],
    ),
    // Ejemplo 14: Artículo reflexivo
    Article(
      title: "Lo que aprendí después de 100 rechazos",
      author: "Isabel Mendoza",
      createdAt: DateTime(2024, 2, 18),
      description: "Cómo el fracaso se convirtió en mi mayor éxito",
      comments: ["Inspirador", "Gracias por compartir tu historia", "Motivación pura"],
      reactions: ["❤️", "❤️", "❤️", "❤️", "❤️", "❤️", "🤗", "🤗", "💪", "💪", "👍"],
    ),
    // Ejemplo 15: Guía práctica
    Article(
      title: "Organización digital: Cero papeles en 2024",
      author: "Francisco Lima",
      createdAt: DateTime(2024, 3, 7),
      description: "Sistema completo para digitalizar tu vida",
      comments: ["¡Revolucionario!", "Mi escritorio nunca fue tan ordenado", "Vida cambiada"],
      reactions: ["🚀", "🚀", "🚀", "👍", "👍", "👍", "👍", "💡", "💡", "📱", "📱"],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Row(
          children: [
            Expanded(child: _leftSide()),
            SizedBox(
              width: width * .6,
              child: Column(
                spacing: 24,
                children: [
                  Row(
                    spacing: 24,
                    children: [
                      Expanded(child: _searchField()),
                      SizedBox(width: 200),
                    ],
                  ),
                  Expanded(
                    child: Row(
                      spacing: 24,
                      children: [
                        Expanded(
                          child: ListView.separated(
                            itemCount: _articles.length,
                            separatorBuilder: (_, _) => const SizedBox(height: 24),
                            itemBuilder: (context, index) {
                              final item = _articles[index];
                              final reactionsSet = Set.from(item.reactions);
                              return Column(
                                spacing: 16,
                                crossAxisAlignment: .start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    color: Colors.white,
                                    padding: const EdgeInsets.all(24),
                                    child: Column(
                                      crossAxisAlignment: .start,
                                      spacing: 16,
                                      children: [
                                        Text(item.title, style: TextStyle(fontWeight: FontWeight.bold)),
                                        Text(item.description),
                                        Row(
                                          spacing: 12,
                                          children: [
                                            FilledButton.icon(onPressed: () {}, icon: Icon(Icons.cloud), label: Text('Award')),
                                            FilledButton.icon(onPressed: () {}, icon: Icon(Icons.favorite), label: Text('React')),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Wrap(
                                    spacing: 8,
                                    runSpacing: 8,
                                    alignment: .start,
                                    children: [
                                      for (final react in reactionsSet)
                                        ElevatedButton.icon(
                                          onPressed: () {},
                                          icon: Text(react),
                                          label: Text(item.reactions.where((e) => e == react).length.toString()),
                                        ),
                                      if (item.comments.isNotEmpty)
                                        ElevatedButton.icon(
                                          onPressed: () {},
                                          icon: Icon(Icons.comment),
                                          label: Text(item.comments.length.toString()),
                                        ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                        _cardsInfo(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: _rightSide()),
          ],
        ),
      ),
    );
  }

  Container _searchField() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.white),
      child: Row(
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.offline_bolt_outlined)),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Publish a post on an article',
                border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(25)),
                fillColor: Colors.grey.shade300,
                filled: true,
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox _cardsInfo() {
    return SizedBox(
      width: 200,
      child: Column(
        spacing: 24,
        children: [
          Container(
            width: double.infinity,
            color: Colors.white,
            padding: const EdgeInsets.all(24),
            child: Column(
              spacing: 24,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(crossAxisAlignment: .start, children: [Text('Home'), Text('Help')]),
                    ),
                    Expanded(
                      child: Column(crossAxisAlignment: .start, children: [Text('Terms'), Text('Policy')]),
                    ),
                  ],
                ),
                Text('Visual Space 2026. All rights reserved.'),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: .start,
              spacing: 12,
              children: [
                Text('Premium - Ad Free', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Enjoy Visual Space with no distraction.'),
                ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.rocket), label: Text('Premium')),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _leftSide() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          spacing: 10,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.abc_rounded)),
            IconButton(onPressed: () {}, icon: Icon(Icons.dangerous_rounded)),
            IconButton(onPressed: () {}, icon: Icon(Icons.back_hand)),
          ],
        ),
      ),
    );
  }

  Widget _rightSide() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Align(
        alignment: Alignment.topRight,
        child: Column(
          spacing: 10,
          children: [IconButton(onPressed: () {}, icon: Icon(Icons.person))],
        ),
      ),
    );
  }
}
