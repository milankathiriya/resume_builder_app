import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/all_build_options.dart';

class BuildOptionsPage extends StatefulWidget {
  const BuildOptionsPage({super.key});

  @override
  State<BuildOptionsPage> createState() => _BuildOptionsPageState();
}

class _BuildOptionsPageState extends State<BuildOptionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resume Workspace"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 70,
                color: Colors.blue,
                child: Text(
                  "Build Options",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ...allBuildOptions.map((Map<String, dynamic> e) {
                return Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        Image.asset("${e['image']}", width: 40),
                        const SizedBox(width: 20),
                        Text(
                          "${e['title']}",
                          style: TextStyle(fontSize: 18),
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            Navigator.of(context).pushNamed('${e['route']}');
                          },
                        ),
                      ],
                    ),
                    Divider(),
                  ],
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
