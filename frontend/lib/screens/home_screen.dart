import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:memo/config/routes/routes.dart';
import 'package:memo/data/data.dart';
import 'package:memo/utils/utils.dart';
import 'package:memo/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static HomeScreen builder(BuildContext context, GoRouterState state) =>
      const HomeScreen();
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.25,
                width: deviceSize.width,
                color: colors.primary,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DisplayWhiteText(
                        text: 'Aug 7, 2023',
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                    DisplayWhiteText(text: 'Simple Memo', fontSize: 40),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 170,
            left: 0,
            right: 0,
            child: SafeArea(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const DisplayListOfTasks(tasks: [
                        Task(
                            title: 'title',
                            note: 'note',
                            time: '10:12',
                            category: TaskCategories.education,
                            date: 'Aug, 07',
                            isCompleted: false),
                        Task(
                            title: 'title2 title2 title2 title2',
                            note: '',
                            time: '10:14',
                            category: TaskCategories.health,
                            date: 'Aug, 07',
                            isCompleted: true)
                      ]),
                      const Gap(20),
                      Text(
                        'Completed',
                        style: context.textTheme.headlineMedium,
                      ),
                      const DisplayListOfTasks(
                        tasks: [
                          Task(
                              title: 'title',
                              note: 'note',
                              time: '10:12',
                              category: TaskCategories.education,
                              date: 'Aug, 07',
                              isCompleted: false),
                          Task(
                              title: 'title2 title2 title2 title2',
                              note: 'note2',
                              time: '10:14',
                              category: TaskCategories.health,
                              date: 'Aug, 07',
                              isCompleted: true)
                        ],
                        isCompletedTasks: true,
                      ),
                      const Gap(20),
                      ElevatedButton(
                        onPressed: () => context.push(RouteLocation.createTask),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: DisplayWhiteText(text: 'Add New Task'),
                        ),
                      )
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
