
import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
import '../view/edit_profile_view.dart';

class EditProfileController extends State<EditProfileView> {
    static late EditProfileController instance;
    late EditProfileView view;

    @override
    void initState() {
        instance = this;
        super.initState();
    }

    @override
    void dispose() => super.dispose();

    @override
    Widget build(BuildContext context) => widget.build(context, this);
}
        
    