import 'package:flutter/material.dart';
import 'package:simobiplus/pages/accountmenu/account_settings_list.dart';
import 'package:simobiplus/pages/accountmenu/account_editprofile.dart';
import 'package:simobiplus/pages/atmservices/manage_atm.dart';
import 'package:simobiplus/styling/greyLine.dart';
import 'package:simobiplus/styling/paddinghorizontal.dart';
import 'package:simobiplus/styling/paddingvertical.dart';

class AccountMenu extends StatelessWidget {
  const AccountMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        color: Color(0xffF9F8FD),
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
              height: MediaQuery.of(context).size.height / 5.5,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffFA3F70),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.account_circle,
                            color: Colors.white,
                            size: 30,
                          ),
                          paddinghorizontal(size: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'LEON CHRISTOPHER',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto'),
                              ),
                              Text(
                                '*******2299',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'Roboto'),
                              ),
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  // width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.width * 0.20,
                ),
                Column(
                  children: [
                    paddingvertical(size: 10),
                    Row(
                      children: [
                        paddinghorizontal(size: 20),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Row(
                            children: [
                              Container(
                                width:
                                    (MediaQuery.of(context).size.width - 42) /
                                        2,
                                child: Column(
                                  children: [
                                    paddingvertical(size: 10),
                                    Row(
                                      children: [
                                        paddinghorizontal(size: 20),
                                        Container(
                                          child: Image.asset(
                                            'assets/images/kuponNew.png',
                                            height: 50,
                                            width: 50,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Coupon',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontFamily: 'Roboto'),
                                            ),
                                            Text(
                                              '0 Coupons',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontFamily: 'Roboto'),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                      ],
                                    ),
                                    paddingvertical(size: 10),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 70,
                                width: 1,
                                child: const DecoratedBox(
                                  decoration: const BoxDecoration(
                                      color: Color(0xffECECEC)),
                                ),
                              ),
                              Container(
                                width:
                                    (MediaQuery.of(context).size.width - 42) /
                                        2,
                                child: Column(
                                  children: [
                                    paddingvertical(size: 10),
                                    Row(
                                      children: [
                                        paddinghorizontal(size: 20),
                                        Container(
                                          child: Image.asset(
                                            'assets/images/evouchernew.png',
                                            height: 50,
                                            width: 50,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'E-voucher',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontFamily: 'Roboto'),
                                            ),
                                            // paddinghorizontal(size: 10),
                                            Text(
                                              '0 E-Vouchers',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontFamily: 'Roboto'),
                                            )
                                          ],
                                        ),
                                        paddinghorizontal(size: 20),
                                      ],
                                    ),
                                    paddingvertical(size: 10),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        paddinghorizontal(size: 20),
                      ],
                    ),
                  ],
                ),

                //
                paddingvertical(size: 5),
                Center(
                    child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Column(
                    children: [
                      AccountSettingsList(
                          menu: 'account',
                          menuTitle: 'My Score',
                          menuTxt:
                              'Checkout your score performance and see promotional offers',
                          menuIcon: 'assets/images/score-nilaiQ-beta.png'),
                    ],
                  ),
                )),
                paddingvertical(size: 40),
                Row(
                  children: [
                    paddinghorizontal(size: 20),
                    Text(
                      'Account Settings',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'Roboto'),
                    ),
                  ],
                ),
                paddingvertical(size: 20),
                Center(
                  child: Column(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const AccountEditProfile(),
                              ),
                            );
                          },
                          child: AccountSettingsList(
                              menu: 'account',
                              menuTitle: 'Edit my personal data',
                              menuTxt: 'Keep your personal data updated',
                              menuIcon: 'assets/images/editProfile.png')),
                      greyLine(),
                      AccountSettingsList(
                          menu: 'account',
                          menuTitle: 'Change EasyPIN',
                          menuTxt:
                              'Change your current EasyPIN for login and other verification purpose',
                          menuIcon: 'assets/images/easypin.png'),
                      greyLine(),
                      AccountSettingsList(
                          menu: 'account',
                          menuTitle: 'Change Password',
                          menuTxt:
                              'Change your current password for login and other verification purpose',
                          menuIcon: 'assets/images/password.png'),
                      greyLine(),
                      AccountSettingsList(
                          menu: 'account',
                          menuTitle: 'Internet Banking',
                          menuTxt: 'Manage your internet Banking access',
                          menuIcon: 'assets/images/logoIB.png'),
                      greyLine(),
                    ],
                  ),
                ),
                paddingvertical(size: 40),
                Row(
                  children: [
                    paddinghorizontal(size: 20),
                    Text(
                      'App Settings',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'Roboto'),
                    ),
                  ],
                ),
                paddingvertical(size: 20),
                Center(
                  child: Column(
                    children: [
                      AccountSettingsList(
                          menu: 'account',
                          menuTitle: 'Login preferences',
                          menuTxt: 'Manage your login options',
                          menuIcon: 'assets/images/loginPre.png'),
                      greyLine(),
                      AccountSettingsList(
                          menu: 'account',
                          menuTitle: 'Language',
                          menuTxt: 'Choose your prefered languages',
                          menuIcon: 'assets/images/language.png'),
                      greyLine(),
                      AccountSettingsList(
                          menu: 'account',
                          menuTitle: 'Change device',
                          menuTxt:
                              'Move your authenticated device into a fresh new one',
                          menuIcon: 'assets/images/change.png'),
                      greyLine(),
                      AccountSettingsList(
                          menu: 'account',
                          menuTitle: 'Clear SimobiPlus data',
                          menuTxt:
                              'Clearing app data resets the application to scratch',
                          menuIcon: 'assets/images/cleardata.png'),
                      greyLine(),
                    ],
                  ),
                ),
                paddingvertical(size: 40),
                Row(
                  children: [
                    paddinghorizontal(size: 20),
                    Text(
                      'Transaction Settings',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'Roboto'),
                    ),
                  ],
                ),
                paddingvertical(size: 20),
                Center(
                  child: Column(
                    children: [
                      AccountSettingsList(
                          menu: 'account',
                          menuTitle: 'Manage BI Ffast',
                          menuTxt: 'Manage transfer using BI Fast',
                          menuIcon: 'assets/images/biFasticon.png'),
                      greyLine(),
                      AccountSettingsList(
                          menu: 'account',
                          menuTitle: 'Scheduled transfer',
                          menuTxt: 'Keep all your scheduled transfer',
                          menuIcon: 'assets/images/schedule.png'),
                      greyLine(),
                      AccountSettingsList(
                          menu: 'account',
                          menuTitle: 'Favorite Transaction',
                          menuTxt: 'List of your favorite transaction',
                          menuIcon: 'assets/images/favtrx.png'),
                      greyLine(),
                      AccountSettingsList(
                          menu: 'account',
                          menuTitle: 'Scheduled Bill Payment',
                          menuTxt:
                              'Create and track your scheduled bill payment',
                          menuIcon: 'assets/images/autodebet.png'),
                      greyLine(),
                      AccountSettingsList(
                          menu: 'account',
                          menuTitle: 'Request for Payment from 3rd Party',
                          menuTxt: 'Check and pay your payment request now!',
                          menuIcon: 'assets/images/pushinvoice.png'),
                      greyLine(),
                      AccountSettingsList(
                          menu: 'account',
                          menuTitle: 'Set Your Own Transfer Limit',
                          menuTxt: 'You can set your transfer limit easily',
                          menuIcon: 'assets/images/limit.png'),
                      greyLine(),
                    ],
                  ),
                ),
                paddingvertical(size: 40),
                Row(
                  children: [
                    paddinghorizontal(size: 20),
                    Text(
                      'Product Settings',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'Roboto'),
                    ),
                  ],
                ),
                paddingvertical(size: 20),
                Center(
                  child: Column(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ManageATM(),
                              ),
                            );
                          },
                          child: AccountSettingsList(
                              menu: 'product',
                              menuTitle: 'Manage Account and ATM Card')),
                      greyLine(),
                      AccountSettingsList(
                          menu: 'product',
                          menuTitle: 'Apply and Manage Merchant'),
                    ],
                  ),
                ),
                paddingvertical(size: 40),
                Row(
                  children: [
                    paddinghorizontal(size: 20),
                    Text(
                      'Help & support',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'Roboto'),
                    ),
                  ],
                ),
                paddingvertical(size: 20),
                Center(
                  child: Column(
                    children: [
                      AccountSettingsList(
                          menu: 'help',
                          menuTitle: 'Call support 1500153',
                          menuIcon: 'phone'),
                      greyLine(),
                      AccountSettingsList(
                          menu: 'help',
                          menuTitle: 'Call support (021) 50188888',
                          menuIcon: 'phone'),
                      greyLine(),
                      AccountSettingsList(
                          menu: 'product',
                          menuTitle: 'Frequently asked questions'),
                      greyLine(),
                      AccountSettingsList(
                          menu: 'product', menuTitle: 'ATM & branch locator'),
                      greyLine(),
                      AccountSettingsList(
                          menu: 'help',
                          menuTitle: 'Chat with Prissa',
                          menuIcon: 'phone'),
                    ],
                  ),
                ),
                paddingvertical(size: 40),
                Row(
                  children: [
                    paddinghorizontal(size: 20),
                    Text(
                      'Legal',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'Roboto'),
                    ),
                  ],
                ),
                paddingvertical(size: 20),
                Center(
                  child: Column(
                    children: [
                      AccountSettingsList(
                          menu: 'product', menuTitle: 'Terms and Conditions'),
                      greyLine(),
                      AccountSettingsList(
                          menu: 'product', menuTitle: 'Privacy Policy'),
                    ],
                  ),
                ),
                paddingvertical(size: 20),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'SimobiPlus Version 8.26.1',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                paddingvertical(size: 40),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffFA3F70)),
                    child: SizedBox(
                        //width: 100,
                        width: MediaQuery.of(context).size.width -
                            40, //this is the total width of your screen
                        height: 47,
                        child: Center(
                          child: Text(
                            'LOG OUT',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'Roboto'),
                          ),
                        )),
                  ),
                ),
                paddingvertical(size: 65),
              ],
            )
          ],
        ),
      )),
    );
  }
}
