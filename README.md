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

### **LQG**

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

### **Ángulo Alfa**

|Dato         |PID        |LQR       |LQG       |
|-------------|:---------:|:--------:|:--------:|
|RiseTime [s]     |     -|0.8328    |0.3862    |
|SettlingTime [s] |     -|1.5443    |2.6555    |
|Overshoot [°]     |      -|0|0.0008|

### **Ángulo Theta**

|Dato         |PID        |LQR       |LQG       |
|-------------|:---------:|:--------:|:--------:|
|SettlingTime [s] |     0.661 |1.7438    |1.9879   |
|Pico [°]    |      10|14.2105|20.1984|

