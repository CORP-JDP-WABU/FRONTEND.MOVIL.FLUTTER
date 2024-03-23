import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocumentListSearch extends StatelessWidget {
   const DocumentListSearch({
    
    super.key});

  @override
  Widget build(BuildContext context) {
  final TextEditingController _controller = TextEditingController();
    return  Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Resúmenes",
                textAlign: TextAlign.left,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'GothamRounded',
                  height: 24 / 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    height: 46,
                    width: 343,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: _controller,
                              decoration: const InputDecoration(
                                hintText: 'Busca a tu profesor para el curso',
                                hintStyle: TextStyle(
                                  color: Color.fromRGBO(191, 191, 191, 1.000),
                                  fontFamily: 'Gotham Rounded',
                                  fontSize: 14,                              
                                  fontWeight: FontWeight.bold,
                                ),
                                border: InputBorder.none,
                            
                              ),
                              onTap: () {
                               
                              },
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {                      
                          },
                          icon:
                              SvgPicture.asset('assets/images/svgs/search.svg'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
              ),
            ],
          )
   ;
  }
}


