## 🧪 MeadTools Taplist OS v1.1

This is a full Raspberry Pi OS image preconfigured with the **MeadTools Taplist Display** app. It boots directly into a fullscreen HDMI taplist display and includes a built-in local Wi-Fi admin interface for editing taplist data — no internet connection required.

---

### 📦 Download

- **Image**: [`MeadTools-Taplist.img.gz`](https://github.com/ljreaux/meadtools-taplist/releases/download/pi-v1.1/MeadTools-Taplist.img.gz)

---

### 🛠️ Installation Instructions

1. **Download** the `.img.gz` file above.
2. **Flash** the image to a microSD card (16 GB or larger recommended) using:
   - [Raspberry Pi Imager](https://www.raspberrypi.com/software/)
   - OR [Balena Etcher](https://etcher.io/)
3. **Insert** the microSD card into your Raspberry Pi and power it on.
4. After boot:
   - The taplist display will launch automatically on HDMI
   - A Wi-Fi network named **Taplist Admin** will appear for configuration (unless Wi-Fi was preconfigured)

> 💡 If your Pi connects to your local Wi-Fi or Ethernet on boot, visit [`http://<hostname>.local:5000/admin`](http://meadtools-taplist.local:5000/admin) to edit your taplist.

---

### ✅ What’s New in v1.1

- ⚙️ More reliable startup process and kiosk launch
- 🖼️ Default desktop background and shortcut link to the admin panel
- 🌐 Improved detection of hostname for empty-state fallback message
- 🧹 Cleanup and stability improvements

---

### ✅ Features

- Fullscreen taplist display on boot
- Category rotation and custom theming via CSS
- Edit taplist data via local Wi-Fi or LAN
- No internet required — fully offline-capable
- Lightweight and optimized for low-power Pi models

---

### 🧰 Recommended Hardware

- Raspberry Pi 3B+ or later
- MicroSD card (≥16 GB)
- HDMI-compatible display
- Optional: Keyboard/mouse for direct Pi access

---

If you'd like to contribute, request features, or report bugs, [open an issue](https://github.com/ljreaux/meadtools-taplist/issues).
