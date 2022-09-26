import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:maeys_kitchen/app_colors.dart';
import 'package:maeys_kitchen/app_assets.dart';
import 'package:maeys_kitchen/by_line.dart';
import 'package:maeys_kitchen/logo.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final defaultTheme = MarkdownStyleSheet.fromTheme(Theme.of(context));

    final styleSheet = defaultTheme.copyWith(
      h1Align: WrapAlignment.center,
      pPadding: const EdgeInsets.symmetric(vertical: 16),
      h2Padding: const EdgeInsets.symmetric(vertical: 16),
      h3Padding: const EdgeInsets.symmetric(vertical: 8),
      horizontalRuleDecoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 0.5,
            color: AppColors.primaryDark,
          ),
        ),
      ),
    );

    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Container(
              constraints: const BoxConstraints(
                maxWidth: 620.0,
              ),
              padding: const EdgeInsets.all(16.0).copyWith(top: 128),
              child: Column(
                children: [
                  const Logo(),
                  const SizedBox.square(
                    dimension: 60,
                  ),
                  MarkdownBody(
                    data: pageContent,
                    styleSheet: styleSheet,
                  ),
                ],
              ),
            ),
          ),
          const ByLine(),
        ],
      ),
    );
  }
}

const pageContent = """

#### __MAEY'S KITCHEN - EAT RIGHT, EAT HEALTHY__

# EDUCATION ON DIETARY AND NUTRITIONAL NEEDS IN FOOD BY MAEYS CHOIX

Food is anything edible (not poisonous or harmful) which contains nutrients that are taken into the body for growth.

Nutrients are very essential substances that are **needed/required** by the body **to perform its basic functions**. Nutrients must be obtained from our diet since the human body can not make them. Nutrients have one or more of three basic functions:
1. They provide energy
2. Contribute to body structure, and/or
3. Regulate chemical processes in the body.

## Nutrients of some foods (fruits and vegetables)

1. Banana: it contains a fair amount of fibre and several antioxidants, improve blood sugar levels, support digestive health, aid weight loss, support heart health, improve insulin sensitivity when unripe, improve kidney health, and support exercise recovery. 
 To sum it up, both ripe, yellow bananas and unripe, green bananas can satisfy your sweet tooth and help keep you healthy.
2. Orange: it is high in vitamin C; oranges have other nutrients that keep your body healthy. The fibre in oranges can keep blood sugar levels in check and reduce high cholesterol to prevent cardiovascular disease, vital for the proper function of a healthy immune system, is good for preventing colds and recurrent ear infections. It also prevents skin disease and protect skin from free radical damage known to cause signs of aging due to the anti-oxidants in oranges. An orange a day can help you look young even at 50, lowers cholesterol, lowers risk of cancer and gives good eye sight.
3. Grape: it is full of vitamins, minerals and antioxidants. They're also full of water, which can help keep you hydrated, helps your immune system, prevents cancer, lowers blood pressure, protects against heart disease, diabetes, maintains brain health, improves bone health, slows aging and improves sleep.
4. Nuts: they are antioxidant powerhouses, aid weight loss, beneficial for type 2 diabetes and metabolic syndrome (stroke, heart disease) and may reduce inflammation.
5. Watermelon: helps you stay hydrated, may relieve muscle soreness, contains vitamin A & E which helps skin health and improves digestion.
6. Apple: Apples are an incredibly nutritious fruit that offers multiple health benefits. They're rich in fibre and antioxidants. Eating them is linked to a lower risk of many chronic conditions, including diabetes, heart disease, and cancer. Apples may also promote weight loss and improve gut and brain health.
7. Carrot: help promote healthy Vision, aids weight loss, improves skin health, helps improve immunity, support heart health, digestive health, diabetes management and help bone health.
8. Cucumber: All that water in cucumbers can help keep you hydrated.
Plus, the fibre boost they give you helps you stay regular and avoid constipation. The vitamin K helps blood clot and keep your bones healthy. Vitamin A has many jobs, like helping with vision, the immune system, and reproduction.
9. Beetroot: Beets are high in fibre and promote the growth of good bacteria in your gut. Having plenty of healthy bacteria in your digestive system helps fight disease and boost your immune system Fibre also improves digestion and reduces the risk of constipation.
10. Lettuce: aids in bone strength, a source of vitamin K, keeps you hydrated, improves vision and sleep.

THANK YOU.

---

By Mabel, Madam Salad: +233 50 137 8373



""";
