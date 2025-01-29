import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageLine extends StatefulWidget {
  final int pageIndex;
  final void Function(int value) onTap;
  const PageLine({super.key, required this.pageIndex, required this.onTap});
  @override
  State<PageLine> createState() => _PageLineState();
}

class _PageLineState extends State<PageLine> {
  final List text = ["المعلومات الشخصية", "المرحلة الدراسية", "الجنس"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Text(text[widget.pageIndex],
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                decoration: TextDecoration.none,
                color: Colors.black,
              )),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    print(0);
                    widget.onTap(0);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: widget.pageIndex == 0
                            ? const Color.fromRGBO(223, 181, 71, 1)
                            : Colors.grey[600],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0))),
                    height: 5,
                    width: 60.w,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    print(1);
                    widget.onTap(1);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: widget.pageIndex == 1
                            ? const Color.fromRGBO(223, 181, 71, 1)
                            : Colors.grey[600],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0))),
                    height: 5,
                    width: 60.w,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    print(2);
                    widget.onTap(2);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: widget.pageIndex == 2
                            ? const Color.fromRGBO(223, 181, 71, 1)
                            : Colors.grey[600],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0))),
                    height: 5,
                    width: 60.w,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
