import 'package:flutter/material.dart';

class Detailed extends StatelessWidget {
  final Map thaiFood;
  const Detailed({super.key, required this.thaiFood});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        title: const Text('รายละเอียด'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Hero(
              tag: thaiFood['image_url'],
              child: Image.network(
                thaiFood['image_url'],
                height: MediaQuery.sizeOf(context).height * .4,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    Text(
                      thaiFood['menu_name'],
                      maxLines: 2,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "โดย ${thaiFood['chef']['name']}",
                      maxLines: 1,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.grey),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      thaiFood['ingredients'],
                      maxLines: 5,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.grey),
                    ),
                    const Spacer(),
                    Text(
                      'สู้ๆนะครับ ทุกคน ^^',
                      maxLines: 5,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.grey),
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
