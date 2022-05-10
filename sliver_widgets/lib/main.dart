import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sliver',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(title: 'Sliver'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            snap: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: const Text(
                'Sliver App Bar',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    "https://picsum.photos/200/300",
                    fit: BoxFit.fill,
                  ),
                  Container(
                    color: Colors.black87.withOpacity(0.3),
                  )
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '''   Ясность нашей позиции очевидна: выбранный нами инновационный путь обеспечивает широкому кругу (специалистов) участие в формировании дальнейших направлений развития. Господа, постоянный количественный рост и сфера нашей активности, в своём классическом представлении, допускает внедрение позиций, занимаемых участниками в отношении поставленных задач. Приятно, граждане, наблюдать, как акционеры крупнейших компаний обнародованы. И нет сомнений, что элементы политического процесса, которые представляют собой яркий пример континентально-европейского типа политической культуры, будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу. В своём стремлении улучшить пользовательский опыт мы упускаем, что акционеры крупнейших компаний будут подвергнуты целой серии независимых исследований. Лишь явные признаки победы институционализации будут разоблачены.

    Задача организации, в особенности же синтетическое тестирование играет определяющее значение для как самодостаточных, так и внешне зависимых концептуальных решений. Постоянный количественный рост и сфера нашей активности не даёт нам иного выбора, кроме определения системы обучения кадров, соответствующей насущным потребностям! Банальные, но неопровержимые выводы, а также интерактивные прототипы обнародованы. Прежде всего, новая модель организационной деятельности требует от нас анализа инновационных методов управления процессами.

    А также представители современных социальных резервов, инициированные исключительно синтетически, превращены в посмешище, хотя само их существование приносит несомненную пользу обществу. Предварительные выводы неутешительны: социально-экономическое развитие способствует повышению качества стандартных подходов. Прежде всего, глубокий уровень погружения создаёт предпосылки для переосмысления внешнеэкономических политик. С учётом сложившейся международной обстановки, повышение уровня гражданского сознания способствует подготовке и реализации вывода текущих активов.

    В своём стремлении улучшить пользовательский опыт мы упускаем, что некоторые особенности внутренней политики представляют собой не что иное, как квинтэссенцию победы маркетинга над разумом и должны быть подвергнуты целой серии независимых исследований. Высокий уровень вовлечения представителей целевой аудитории является четким доказательством простого факта: экономическая повестка сегодняшнего дня играет определяющее значение для новых предложений.

    Лишь тщательные исследования конкурентов лишь добавляют фракционных разногласий и смешаны с не уникальными данными до степени совершенной неузнаваемости, из-за чего возрастает их статус бесполезности. С учётом сложившейся международной обстановки, понимание сути ресурсосберегающих технологий обеспечивает широкому кругу (специалистов) участие в формировании переосмысления внешнеэкономических политик. Ясность нашей позиции очевидна: семантический разбор внешних противодействий обеспечивает широкому кругу (специалистов) участие в формировании соответствующих условий активизации.''',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ),
          )
        ],
      )),
    );
  }
}
