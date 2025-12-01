import 'package:projarly2/model/user.dart';
import 'package:projarly2/provider/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projarly2/telaInicial.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final User user = context.watch<ProfileProvider>().user;

    return Scaffold(
      backgroundColor: const Color(0xFFF2F5F7),
      appBar: AppBar(
        backgroundColor: const Color(0xFF214865),
        elevation: 0,
        title: Text(
          "Perfil",
          style: GoogleFonts.inter(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 10),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                children: [
                  // ✨ Avatar simples
                  CircleAvatar(
                    radius: 65,
                    backgroundColor: Colors.grey[300],
                    backgroundImage:
                    (user.imageUrl != null && user.imageUrl!.isNotEmpty)
                        ? NetworkImage(user.imageUrl!)
                        : null,
                    child: (user.imageUrl == null || user.imageUrl!.isEmpty)
                        ? const Icon(Icons.person, size: 60, color: Colors.white)
                        : null,
                  ),

                  const SizedBox(height: 16),

                  Text(
                    user.name,
                    style: GoogleFonts.inter(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF214865),
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    "@${user.username}",
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF214865),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                icon: const Icon(Icons.check, color: Colors.white),
                label: Text(
                  "OK",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TelaInicial(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
