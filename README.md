# Gimbal
Desarrollo de un Gimbal
## 📷 Introducción
Este proyecto nace con la idea de facilitar la grabación de vídeo estable mediante un sistema de estabilización mecánico (gimbal) de dos ejes. Aporta una solución accesible, económica y funcional para creadores de contenido y personas con problemas de movilidad.

---

## 🎯 Objetivos

- ✅ Estabilización eficaz mediante rechazo de perturbaciones.
- ✅ Control de referencia externo por joystick vía ESP-Now.
- ✅ Diseño ergonómico y económico (presupuesto limitado a 80 €).
- ✅ Soporte para móviles o cámaras pequeñas.

---

## Organización y grupos de trabajo
- Departamento de diseño de estructura: Diseño del manillar y estructura principal mediante el software Fusion 360
- Departamento de control: Diseño de un controlador PID con el objetivo de rechazar perturbaciones
- Departamento de comunicación externa: Diseño de programas para establecer la comunicación entre dos ESP32 y enviar los datos recogidos del joystick.


## 🧰 Material y diseño

### 📦 Material utilizado
(Placas, sensores, baterías, estructura impresa en 3D, etc.)

- 2 × ESP32 🧠
- 3 × Servomotores MG996R 🔁
- 1 × IMU 6050 📐
- 1 × Joystick 🎮
- Placa protoboard, batería portátil, pilas 6V, cables, etc.

### 🔌 Conexionado
- **Gimbal**: 3 servos conectados a ESP32 (pins 25, 26, 27) + IMU (SCL/SDA a pins 22/21)
- **Control remoto**: Joystick conectado a segunda ESP32 (pins 32/33), comunicación ESP-Now

### 🛠 Diseño mecánico
Desarrollado con FUSION 360:  
- Manillar ergonómico 👐  
- Soporte en L y U para motores y estructura  
- Carcasa del mando a distancia con compartimento para batería y joystick  
- Soporte para electrónica con protoboard  
---

## 💻 Software

Sistema en bucle cerrado controlado por un PID discreto ajustado experimentalmente.  
- Diseño de PID en C
- Control sobre ESP32 con tiempo de muestreo ~10 ms
- Comunicación con joystick externo vía protocolo **ESP-Now**
- Referencia mapeada desde joystick a ángulos para control

---

## 🧠 Conclusiones

Este proyecto ha sido una experiencia integradora entre hardware, software, diseño mecánico y trabajo en equipo. Nos ha permitido:
- Aplicar conocimientos de programación, control, diseño 3D y documentación técnica.
- Cometer y corregir errores que nos han hecho aprender aún más.
- Imaginar futuras versiones con sistemas lumínicos o app móvil.

---




