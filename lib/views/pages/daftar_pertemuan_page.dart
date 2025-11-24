import 'package:flutter/material.dart';

class DaftarPertemuanPage extends StatelessWidget {
  const DaftarPertemuanPage({super.key});

  // Fungsi untuk mendapatkan warna berdasarkan status
  Color _getStatusColor(String status) {
    switch (status) {
      case 'Hadir':
        return Colors.green[400]!;
      case 'Sakit':
        return Colors.blue[400]!;
      case 'Izin':
        return Colors.yellow[600]!;
      case 'Terlambat':
        return Colors.red[300]!;
      case 'Tidak Hadir':
        return Colors.red[600]!;
      case 'Libur':
        return Colors.grey[300]!;
      default:
        return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    // Data hanya berisi status, nomor digenerate otomatis dari 01-16
    final statusList = [
      'Hadir',
      'Sakit',
      'Izin',
      'Terlambat',
      'Tidak Hadir',
      'Libur',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
    ];

    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Daftar Pertemuan',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title Section
              const Text(
                'Kehadiran Anda:',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              const SizedBox(height: 4),
              const Text(
                'Praktik Produksi Pasca Animasi',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 16),

              // Attendance Grid
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2.5,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemCount: 16,
                  itemBuilder: (context, index) {
                    final status = statusList[index];
                    final statusColor = _getStatusColor(status);
                    final number = (index + 1).toString().padLeft(2, '0');

                    return Container(
                      decoration: BoxDecoration(
                        color: statusColor,
                        borderRadius: BorderRadius.circular(8),
                        border: status.isEmpty
                            ? Border.all(color: Colors.grey[300]!)
                            : null,
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(29, 0, 0, 0),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      child: Row(
                        children: [
                          Text(
                            number,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          if (status.isNotEmpty) ...[
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                status,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 16),

              // Legend
              Wrap(
                spacing: 12,
                runSpacing: 8,
                children: [
                  _buildLegendItem('Hadir', Colors.green[400]!),
                  _buildLegendItem('Terlambat', Colors.red[300]!),
                  _buildLegendItem('Tidak Hadir', Colors.red[600]!),
                  _buildLegendItem('Sakit', Colors.blue[400]!),
                  _buildLegendItem('Izin', Colors.yellow[600]!),
                  _buildLegendItem('Libur', Colors.grey[300]!),
                ],
              ),
              const SizedBox(height: 16),

              // Scan Button
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle scan action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber[700],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.qr_code_scanner, color: Colors.white),
                      SizedBox(width: 8),
                      Text(
                        'SCAN',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLegendItem(String label, Color color) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        const SizedBox(width: 6),
        Text(
          label,
          style: const TextStyle(fontSize: 12, color: Colors.black87),
        ),
      ],
    );
  }
}
