import 'package:flutter/material.dart';
import 'package:wabu/features/smash/domain/domain.dart';

class CardView extends StatelessWidget {
  const CardView({
    super.key,
    required this.smashSuggestion,
  });

  final SmashSuggestion smashSuggestion;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Image.network(smashSuggestion.teacher?.photoUrl ?? ''),
            ),
            const SizedBox(height: 10),
            Text(
              smashSuggestion.teacher?.lastName ?? '',
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Color.fromRGBO(2, 51, 106, 1.000),
                fontFamily: 'SFProDisplay',
                fontSize: 20,
                height: 31 / 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              smashSuggestion.teacher?.firstName ?? '',
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Color.fromRGBO(2, 51, 106, 1.000),
                fontFamily: 'SFProDisplay',
                fontSize: 20,
                height: 31 / 23,
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                smashSuggestion.course?.name ?? '',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color.fromRGBO(2, 51, 106, 1.000),
                  fontFamily: 'SFProDisplay',
                  fontSize: 17,
                  height: 31 / 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
