import 'package:flutter/material.dart';
import 'package:pet_rescue/theme/color.dart';
import 'package:pet_rescue/utils/data.dart';
import 'package:pet_rescue/widgets/search_box.dart'; // Widget de busca
import 'package:pet_rescue/widgets/category_card.dart'; // Widget de categoria
import 'package:pet_rescue/widgets/pet_card.dart'; // Widget de pets

class PetsPage extends StatefulWidget {
  const PetsPage({Key? key}) : super(key: key);

  @override
  _PetsPageState createState() => _PetsPageState();
}

class _PetsPageState extends State<PetsPage> {
  String selectedCategory = "Todos";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appBgColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColor.appBarColor,
            pinned: true,
            snap: true,
            floating: true,
            title: _buildAppBar(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => _buildBody(),
              childCount: 1,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            "Pets",
            style: TextStyle(
              fontSize: 24,
              color: AppColor.textColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.filter_list, color: AppColor.labelColor),
          onPressed: () {
            // Ação ao clicar no botão de filtro
          },
        ),
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSearchBox(),
            const SizedBox(height: 20),
            _buildCategories(),
            const SizedBox(height: 20),
            _buildPetList(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBox() {
    return SearchBox(
      hint: "Search",
      controller: TextEditingController(),
    );
  }

  Widget _buildCategories() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            iconPath: categories[index]["icon"]!,
            name: categories[index]["name"]!,
            isSelected: selectedCategory == categories[index]["name"],
            onTap: () {
              setState(() {
                selectedCategory = categories[index]["name"]!;
              });
            },
          ),
        ),
      ),
    );
  }

  Widget _buildPetList() {
    List petsToShow = selectedCategory == "Todos"
        ? pets
        : pets.where((pet) => pet["category"] == selectedCategory).toList();

    return Column(
      children: List.generate(
        petsToShow.length,
        (index) => PetCard(
          data: petsToShow[index],
          onTap: () {
            // Ação ao clicar em um pet
          },
          onFavoriteTap: () {
            setState(() {
              petsToShow[index]["is_favorited"] =
                  !petsToShow[index]["is_favorited"];
            });
          },
        ),
      ),
    );
  }
}
