import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MarkdownEditorPage extends StatefulWidget {
  const MarkdownEditorPage({super.key});

  @override
  _MarkdownEditorPageState createState() => _MarkdownEditorPageState();
}

class _MarkdownEditorPageState extends State<MarkdownEditorPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Markdown Previewer')),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _controller,
                maxLines: null,
                expands: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Markdown here...',
                ),
                onChanged: (_) => setState(() {}),
              ),
            ),
          ),
          Divider(),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Markdown(
                data: _controller.text,
                selectable: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
