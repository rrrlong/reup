import 'package:flutter/material.dart';
import 'package:reup/features/search/widgets/popular_search.dart';
import 'package:reup/features/search/widgets/recent_search.dart';
import 'package:reup/features/search/widgets/recomendations.dart';
import 'package:reup/features/search/widgets/product_search.dart';
import 'package:reup/features/search/widgets/search_bar.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  SearchBarText(searchController: searchController),
                  const SizedBox(
                    height: 16,
                  ),
                  const RecentSearch(
                    searches: [
                      'рубашка белая',
                      'костюм серый',
                      'пижама женская'
                    ],
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: PopularSearch(searches: [
                      'рубашка белая',
                      'костюм серый',
                      'пижама женская'
                    ]),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Recomendations(searches: [
                      'какой-то бренд',
                      'какой-то бренд',
                      'какой-то бренд'
                    ]),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: ProuctSearch(
                              data: ProductSearchData(
                                  Image.asset(
                                      'assets/images/reup_product_search.jpg'),
                                  'джинсы крутецкие',
                                  'befree'),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            flex: 1,
                            child: ProuctSearch(
                              data: ProductSearchData(
                                  Image.asset(
                                      'assets/images/reup_product_search.jpg'),
                                  'джинсы крутецкие',
                                  'befree'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: ProuctSearch(
                              data: ProductSearchData(
                                  Image.asset(
                                      'assets/images/reup_product_search.jpg'),
                                  'джинсы крутецкие',
                                  'befree'),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            flex: 1,
                            child: ProuctSearch(
                              data: ProductSearchData(
                                  Image.asset(
                                      'assets/images/reup_product_search.jpg'),
                                  'джинсы крутецкие',
                                  'befree'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: ProuctSearch(
                              data: ProductSearchData(
                                  Image.asset(
                                      'assets/images/reup_product_search.jpg'),
                                  'джинсы крутецкие',
                                  'befree'),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            flex: 1,
                            child: ProuctSearch(
                              data: ProductSearchData(
                                  Image.asset(
                                      'assets/images/reup_product_search.jpg'),
                                  'джинсы крутецкие',
                                  'befree'),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
