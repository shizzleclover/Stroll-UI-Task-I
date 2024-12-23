import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const CustomBottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border(
          top: BorderSide(
            color: Colors.grey.withOpacity(0.2),
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(0, Icons.style, selectedIndex == 0),
          _buildNavItem(1, Icons.water_drop, selectedIndex == 1),
          Stack(
            children: [
              _buildNavItem(2, Icons.chat_bubble_outline, selectedIndex == 2),
              Positioned(
                right: 0,
                top: 15,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.purple,
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    '10',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          _buildNavItem(3, Icons.person_outline, selectedIndex == 3),
        ],
      ),
    );
  }

  Widget _buildNavItem(int index, IconData icon, bool isSelected) {
    return InkWell(
      onTap: () => onItemSelected(index),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Icon(
          icon,
          size: 28,
          color: isSelected ? Colors.purple : Colors.grey,
        ),
      ),
    );
  }
}

// Example usage in your HomeScreen:
 