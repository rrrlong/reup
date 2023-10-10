import 'package:flutter/material.dart';
import 'package:reup/features/common/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCartData {
  final Image image;
  final String name;
  final String type;
  final String brand;
  final String color;
  final String size;
  final int price;
  final int lastPrice;
  ProductCartData(this.image, this.name, this.type, this.brand, this.color,
      this.size, this.price, this.lastPrice);
}

class ProductCart extends StatefulWidget {
  final ProductCartData data;
  // final VoidCallback onDelete;
  final VoidCallback onTap;
  const ProductCart({
    super.key,
    required this.data,
    required this.onTap,
  });

  @override
  State<ProductCart> createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
  int _quantity = 1;
  late int _finalPrice;
  late int _fullPrice;
  bool _isCheked = false;

  @override
  Widget build(BuildContext context) {
    _finalPrice = _quantity * widget.data.price;
    _fullPrice = _quantity * widget.data.lastPrice;
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        //height: 160,
        child: Column(
          children: [
            // const SizedBox(
            //   height: 16,
            // ),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    Stack(
                      children: [
                        widget.data.image,
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Checkbox(
                                fillColor:
                                    MaterialStateProperty.all(Colors.white),
                                checkColor: Colors.green,
                                activeColor: Colors.white,
                                splashRadius: 0,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: _isCheked,
                                onChanged: (value) {
                                  setState(() {
                                    _isCheked = value!;
                                  });
                                }))
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          widget.data.name,
                          style: CustomTextStyle.reupCartName,
                          maxLines: 1,
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: null,
                          icon: SvgPicture.asset(
                              'assets/icons/reup_icon_trash_can.svg'),
                          iconSize: 1,
                          style: IconButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                        )
                      ],
                    ),
                    // const SizedBox(
                    //   height: 8,
                    // ),
                    Text(
                      widget.data.type,
                      style: CustomButtonTextStyle.buttonBoldStyle,
                      maxLines: 1,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      widget.data.brand,
                      style: CustomTextStyle.promoTextStyle,
                      maxLines: 1,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      widget.data.color,
                      style: CustomTextStyle.promoTextStyle,
                      maxLines: 1,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      widget.data.size,
                      style: CustomTextStyle.promoTextStyle,
                      maxLines: 1,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    //не смотрел его еще на телефоне
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Row(
                        children: [
                          Container(
                            width: 120,
                            height: 32,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 1)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: const Color.fromARGB(
                                        255, 242, 242, 242),
                                    width: 40,
                                    child: IconButton(
                                      onPressed: () {
                                        if (_quantity > 1) {
                                          _quantity--;
                                          _finalPrice =
                                              widget.data.price * _quantity;
                                          _fullPrice =
                                              widget.data.lastPrice * _quantity;
                                        }
                                        setState(() {});
                                      },
                                      icon: SvgPicture.asset(
                                          'assets/icons/reup_icon_minus.svg'),
                                      //iconSize: 20,

                                      style: IconButton.styleFrom(
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: SizedBox(
                                    height: 32,
                                    width: 40,
                                    child: Center(
                                      child: Text(
                                        '$_quantity',
                                        maxLines: 1,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: SizedBox(
                                    //color: Color(0xFF333333),
                                    width: 40,
                                    child: IconButton(
                                      onPressed: () {
                                        _quantity++;
                                        _finalPrice =
                                            widget.data.price * _quantity;
                                        _fullPrice =
                                            widget.data.lastPrice * _quantity;
                                        setState(() {});
                                      },
                                      icon: SvgPicture.asset(
                                          'assets/icons/reup_icon_plus.svg'),
                                      //iconSize: 20,
                                      style: IconButton.styleFrom(
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '${_finalPrice} ₽',
                                style: CustomButtonTextStyle.buttonItemStyle,
                              ),
                              Text(
                                '${_fullPrice} ₽',
                                style: CustomTextStyle.reupLastPrice,
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]),
            const SizedBox(
              height: 16,
            ),
            // линия
            Container(
              width: double.infinity,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.50,
                    //strokeAlign:
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
