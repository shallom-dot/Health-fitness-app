import 'package:flutter/material.dart';
import '../models/list_item.dart';
import '../widgets/custom_search_bar.dart';
import '../widgets/list_item_widget.dart';

class MessagingScreen extends StatelessWidget {
  const MessagingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.13),
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back_rounded),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Text(
                          'Messaging',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: const Icon(Icons.help_outline),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const CustomSearchAppBar(hintText: "Search \"Whey Protein\""),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        color: const Color(0xFFFAFAFA),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ListItemWidget(
              assetUrl: item.assetUrl,
              title: item.title,
              subtitle: item.subtitle,
              trailing: item.trailing,
            );
          },
        ),
      ),
    );
  }
}
