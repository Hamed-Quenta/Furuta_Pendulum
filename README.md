# **Péndulo de Furuta**

**Integrantes:**  
Christian Ricardo Conchari Cabrera
Hamed Emmerson Quenta Alvarez  
Franklin Josué Ticona Coaquira

**Docente:**  
Mgr. Gabriel Antonio Rojas Silva

## Modelo 3D

![Simscape](https://github.com/DRIAE/Furuta_Pendulum/blob/master/assets/3dview.png)

## **Espacio de estados**

![State Space](https://github.com/Rod5919/Pendulo-invertido/blob/main/assets/StateSpace.png)

## **Sistema en open-loop**

![open-loop](https://github.com/Rod5919/Pendulo-invertido/blob/main/assets/Grafica_open-loop.jpg)

## **Controladores implementados**

1. PID
2. LQR
3. LQR

## **Ganancias de cada controlador**

### **PID**

~~~matlab
kp = -46.1621
ki= -200.233
kd= -4.03087
~~~

### **LQR**

~~~matlab
K = [-48.4768 -64.0586 -241.576 -54.3824]
~~~

## **LQG**


## **Gráficas resultantes**

### **PID**

![Grafica_PID](https://github.com/Rod5919/Pendulo-invertido/blob/main/assets/Grafica_PID.jpg)

### **LQR**

![Grafica_LQR](https://github.com/Rod5919/Pendulo-invertido/blob/main/assets/Grafica_LQR.jpg)

### **LQG**

![Grafica_FC](https://github.com/Rod5919/Pendulo-invertido/blob/main/assets/Grafica_FC.jpg)

## **Datos de respuesta ante un step**

### **Ángulo**

|Dato         |PID        |LQR       |FLC       |
|-------------|:---------:|:--------:|:--------:|
|RiseTime     |     0.0114|0.2708    |0.0861    |
|SettlingTime |     2.4134|7.4297    |3.9158    |
|Overshoot    | 6.7919e+06|1.7434e+06|1.0349e+05|
|Peak         |     0.3014|0.1047    |0.1047    |

### **Desplazamiento**

|Dato         |PID     |LQR     |FLC       |
|-------------|:------:|:------:|:--------:|
|RiseTime     |  0.5072|0.1774  |0.8611    |
|SettlingTime |  4.8250|11.2368 |3.5633    |
|SettlingMin  | -0.2677|0.2911  |-0.0283   |
|SettlingMax  | -0.1067|0.4168  |0.0247    |
|Overshoot    |130.5523|38.8452 |4.7159e+04|
|Undershoot   |333.9609|0       |5.2974e+05|
|Peak         |  0.3877|0.4168  |0.3176    |
|PeakTime     |  0.0588|0.7807  |0.2670    |
