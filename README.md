# **Péndulo de Furuta**

**Integrantes:**  
Christian Ricardo Conchari Cabrera  
Hamed Emmerson Quenta Alvarez  
Franklin Josué Ticona Coaquira  

**Docente:**  
Mgr. Gabriel Antonio Rojas Silva

## Modelo 3D

![Simscape](https://github.com/DRIAE/Furuta_Pendulum/blob/master/assets/3dview.png)

## Esquema

![Esquema](https://github.com/DRIAE/Furuta_Pendulum/blob/master/assets/esquema.png)

## **Espacio de estados**

![State Space](https://github.com/DRIAE/Furuta_Pendulum/blob/master/assets/espaciodeestados.png)

## **Datos del sistema**

![Datos](https://github.com/DRIAE/Furuta_Pendulum/blob/master/assets/datos.png)

## **Espacio de estados con datos reemplazados**

![State Space1](https://github.com/DRIAE/Furuta_Pendulum/blob/master/assets/espaciodeestados1.png)

## **Controladores implementados**

1. PID
2. LQR
3. LQG

## **Ganancias de cada controlador**

### **PID**

~~~matlab
kp = -2.2468
ki= -0.063624
kd= -14.626
~~~

### **LQR**

~~~matlab
K = [-3.1623 -2.0889 -26.0826 -2.5986]
~~~

## **LQG**

## **Gráficas resultantes para Theta**

### **PID**

![Grafica_PID](https://github.com/DRIAE/Furuta_Pendulum/blob/master/assets/pid_theta.png)

### **LQR**

![Grafica_LQR](https://github.com/DRIAE/Furuta_Pendulum/blob/master/assets/lqr_theta.png)

### **LQG**

![Grafica_LQG](https://github.com/DRIAE/Furuta_Pendulum/blob/master/assets/lqg_theta.png)

## **Gráficas resultantes para Alfa**

### **LQR**

![Grafica_LQR_a](https://github.com/DRIAE/Furuta_Pendulum/blob/master/assets/lqr_alpha.png)

### **LQG**

![Grafica_LQG_a](https://github.com/DRIAE/Furuta_Pendulum/blob/master/assets/lqg_alpha.png)


## **Tabla Comparativa**

### **Ángulo Theta**

|Dato         |PID        |LQR       |FLC       |
|-------------|:---------:|:--------:|:--------:|
|RiseTime     |     0.0275|0.2708    |0.0861    |
|SettlingTime |     0.575 |7.4297    |3.9158    |
|Overshoot    |      30.5%|1.7434e+06|1.0349e+05|
|Peak         |        1.3|0.1047    |0.1047    |

