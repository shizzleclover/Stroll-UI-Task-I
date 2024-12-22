import 'package:flutter/material.dart';
import '../Constants/colors.dart';
import '../../../../core/constants/dimensions.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimensions.bottomNavHeight,
      padding: const EdgeInsets.symmetric(horizontal: AppDimensions.padding),
      decoration: BoxDecoration(
        color: AppColors.background.withOpacity(0.8),
        border: Border(
          top: BorderSide(color: AppColors.borderColor),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.view_agenda),
          _buildNavItemWithBadge(Icons.favorite_border, '2'),
          _buildNavItemWithBadge(Icons.chat_bubble_outline, '3'),
          _buildNavItem(Icons.person_outline),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon) {
    return Icon(
      icon,
      color: AppColors.textPrimary,
    );
  }

  Widget _buildNavItemWithBadge(IconData icon, String count) {
    return Stack(
      children: [
        Icon(icon, color: AppColors.textPrimary),
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: const BoxDecoration(
              color: AppColors.primary,
              shape: BoxShape.circle,
            ),
            constraints: const BoxConstraints(
              minWidth: AppDimensions.badgeSize,
              minHeight: AppDimensions.badgeSize,
            ),
            child: Text(
              count,
              style: const TextStyle(
                fontSize: 10,
                color: AppColors.textPrimary,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}