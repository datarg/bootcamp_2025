# BOOTCAMP 4.0

- Martes:
  - [Visión General de lenguajes](#visión-general-de-lenguajes-de-programación):
    tipos, dominio, implementación, paradigmas soportados.
  - [Introducción e instalación a Python.](#introducción-e-instalación-a-python)
  - [Formas de ejecutar código Python.](#formas-de-ejecutar-código-python)
  - [Sintaxis y estructura básica.](#sintaxis-y-estructura-básica)

---

## Visión General de Lenguajes de Programación

### Tipos de Lenguajes

Los lenguajes de programación se pueden clasificar según varios criterios:

**Por nivel de abstracción:**

<div style="background-color: black; border-radius: 10px; padding: 20px; margin: 20px 0;">

```mermaid
graph LR
    A[Lenguajes de Programación] --> B[Bajo Nivel]
    A --> C[Alto Nivel]
    B --> D[Lenguaje Máquina]
    B --> E[Ensamblador]
    C --> F[Compilados]
    C --> G[Interpretados]
    C --> H[Híbridos]
    F --> I[C, C++, Rust]
    G --> J[JavaScript, Ruby]
    H --> K[Python, Java, C#]

    style A fill:#2C5F8D,stroke:#fff,stroke-width:3px,color:#fff
    style B fill:#1A4D6D,stroke:#fff,stroke-width:2px,color:#fff
    style C fill:#1A4D6D,stroke:#fff,stroke-width:2px,color:#fff
```

</div>

**Por tipado:**

<div style="background-color: black; border-radius: 10px; padding: 20px; margin: 20px 0;">

```mermaid
graph LR
    A[Sistemas de Tipado] --> B[Tipado Estático]
    A --> C[Tipado Dinámico]
    B --> D[Java, C++, TypeScript]
    C --> E[Python, JavaScript, Ruby]
    A --> F[Tipado Fuerte]
    A --> G[Tipado Débil]
    F --> H[Python, Java]
    G --> I[JavaScript, PHP]

    style A fill:#2C5F8D,stroke:#fff,stroke-width:3px,color:#fff
    style B fill:#1A4D6D,stroke:#fff,stroke-width:2px,color:#fff
    style C fill:#1A4D6D,stroke:#fff,stroke-width:2px,color:#fff
    style F fill:#1A4D6D,stroke:#fff,stroke-width:2px,color:#fff
    style G fill:#1A4D6D,stroke:#fff,stroke-width:2px,color:#fff
```

</div>

### Dominios de Aplicación

Los lenguajes de programación se especializan en diferentes dominios:

<div style="background-color: black; border-radius: 10px; padding: 20px; margin: 20px 0;">

```mermaid
flowchart LR
    A[Dominios de Lenguajes] --> B[Desarrollo Web]
    A --> C[Ciencia de Datos]
    A --> D[Sistemas]
    A --> E[Móvil]
    A --> F[Empresarial]

    B --> B1[Frontend: JavaScript, TypeScript]
    B --> B2[Backend: Python, Java, Node.js]

    C --> C1[Python]
    C --> C2[R]
    C --> C3[Julia]

    D --> D1[C]
    D --> D2[C++]
    D --> D3[Rust]

    E --> E1[Swift - iOS]
    E --> E2[Kotlin - Android]
    E --> E3[Flutter - Multiplataforma]

    F --> F1[Java]
    F --> F2[C#]
    F --> F3[COBOL]

    style A fill:#8B4513,stroke:#fff,stroke-width:4px,color:#fff
```

</div>

### Paradigmas de Programación

<div style="background-color: black; border-radius: 10px; padding: 20px; margin: 20px 0;">

```mermaid
graph LR
    A[Paradigmas de Programación] --> B[Imperativo]
    A --> C[Declarativo]

    B --> D[Procedural]
    B --> E[Orientado a Objetos]

    C --> F[Funcional]
    C --> G[Lógico]

    D --> H[C, Pascal]
    E --> I[Java, Python, C++]
    F --> J[Haskell, Lisp, Scala]
    G --> K[Prolog, Datalog]

    style A fill:#8B008B,stroke:#fff,stroke-width:4px,color:#fff
    style B fill:#4169E1,stroke:#fff,stroke-width:2px,color:#fff
    style C fill:#228B22,stroke:#fff,stroke-width:2px,color:#fff
```

</div>

**Características de cada paradigma:**

- **Imperativo**: Define cómo se ejecuta el programa paso a paso
- **Declarativo**: Define qué se quiere lograr, no cómo
- **Orientado a Objetos**: Organiza código en objetos con datos y comportamiento
- **Funcional**: Trata la computación como evaluación de funciones matemáticas

---

## Introducción e Instalación a Python

### ¿Qué es Python?

Python es un lenguaje de programación de alto nivel, interpretado, de propósito
general y con tipado dinámico. Creado por Guido van Rossum en 1991.

<div style="background-color: black; border-radius: 10px; padding: 20px; margin: 20px 0;">

```mermaid
timeline
    title Historia de Python
    1991 : Python 0.9.0 - Primera versión
    2000 : Python 2.0 - List comprehensions, garbage collector
    2008 : Python 3.0 - Incompatible con Python 2, modernización
    2020 : Python 2 EOL - Fin del soporte oficial
    2023 : Python 3.12 - Mejoras de rendimiento y sintaxis
```

</div>

### Características Principales

<div style="background-color: black; border-radius: 10px; padding: 20px; margin: 20px 0;">

```mermaid
flowchart LR
    A[Python] --> B[Sintaxis Simple]
    A --> C[Multipropósito]
    A --> D[Gran Ecosistema]
    A --> E[Multiplataforma]
    A --> F[Tipado Dinámico]

    B --> B1[Legible]
    B --> B2[Fácil de aprender]
    B --> B3[Código limpio]

    C --> C1[Web Development]
    C --> C2[Data Science]
    C --> C3[Machine Learning]
    C --> C4[Automation]

    D --> D1[PyPI - 400k+ paquetes]
    D --> D2[Comunidad activa]
    D --> D3[Documentación extensa]

    E --> E1[Windows]
    E --> E2[macOS]
    E --> E3[Linux]

    F --> F1[Duck typing]
    F --> F2[Type hints opcionales]

    style A fill:#2C5F8D,stroke:#fff,stroke-width:4px,color:#fff
```

</div>

### Proceso de Instalación

<div style="background-color: black; border-radius: 10px; padding: 20px; margin: 20px 0;">

```mermaid
graph LR
    A[1. Descargar Python] --> B[2. Instalar]
    B --> C[3. Configurar PATH]
    C --> D[4. Verificar]
    D --> E[5. Listo]

    style A fill:#2C5F8D,stroke:#fff,stroke-width:3px,color:#fff
    style B fill:#2C5F8D,stroke:#fff,stroke-width:3px,color:#fff
    style C fill:#2C5F8D,stroke:#fff,stroke-width:3px,color:#fff
    style D fill:#2C5F8D,stroke:#fff,stroke-width:3px,color:#fff
    style E fill:#228B22,stroke:#fff,stroke-width:3px,color:#fff
```

</div>

**Pasos detallados por sistema operativo:**

- **Windows**: Descargar desde python.org → Ejecutar instalador → Marcar "Add to PATH"
- **macOS**: `brew install python3` o descargar desde python.org
- **Linux**: `sudo apt install python3` o `sudo yum install python3`

**Verificación:**

```bash
python --version
pip --version
```

### Gestión de Entornos Virtuales

<div style="background-color: black; border-radius: 10px; padding: 20px; margin: 20px 0;">

```mermaid
graph LR
    A[Proyecto Python] --> B{Entornos Virtuales}
    B --> C[venv - Estándar]
    B --> D[conda - Anaconda]
    B --> E[poetry - Moderno]
    B --> F[virtualenv - Clásico]

    C --> G[Aislamiento de dependencias]
    D --> G
    E --> G
    F --> G
```

</div>

---

## Formas de Ejecutar Código Python

### Modalidades de Ejecución

<div style="background-color: black; border-radius: 10px; padding: 20px; margin: 20px 0;">

```mermaid
graph LR
    A[Ejecutar Python] --> B[Modo Interactivo]
    A --> C[Modo Script]
    A --> D[Notebooks]
    A --> E[IDEs]

    B --> B1[REPL - Python Shell]
    B --> B2[IPython - Shell mejorado]

    C --> C1[python script.py]
    C --> C2[Scripts ejecutables]

    D --> D1[Jupyter Notebooks]
    D --> D2[Google Colab]
    D --> D3[VS Code Notebooks]

    E --> E1[PyCharm]
    E --> E2[VS Code]
    E --> E3[Spyder]

    style A fill:#8B4513,stroke:#fff,stroke-width:4px,color:#fff
```

</div>

### Comparación de Métodos

<div style="background-color: black; border-radius: 10px; padding: 20px; margin: 20px 0;">

```mermaid
graph TB
    subgraph REPL["REPL - Interactivo"]
        A1[Pruebas rápidas]
        A2[Exploración de APIs]
        A3[Debugging]
    end

    subgraph Scripts["Scripts"]
        B1[Programas completos]
        B2[Automatización]
        B3[Producción]
    end

    subgraph Notebooks["Notebooks"]
        C1[Análisis de datos]
        C2[Visualización]
        C3[Documentación interactiva]
    end

    subgraph IDEs["IDEs"]
        D1[Desarrollo profesional]
        D2[Debugging avanzado]
        D3[Refactoring]
    end
```

</div>

### Flujo de Ejecución

<div style="background-color: black; border-radius: 10px; padding: 20px; margin: 20px 0;">

```mermaid
sequenceDiagram
    participant U as Usuario
    participant I as Intérprete Python
    participant B as Bytecode
    participant V as PVM (Python Virtual Machine)

    U->>I: Escribe código .py
    I->>I: Análisis sintáctico
    I->>B: Compila a .pyc
    B->>V: Bytecode
    V->>V: Ejecuta instrucciones
    V->>U: Resultado/Output
```

</div>

### Comandos Básicos

**REPL/Shell:**

```bash
# Iniciar Python shell
python
>>> print("Hola Mundo")
>>> exit()

# IPython (más features)
ipython
```

**Ejecutar Scripts:**

```bash
# Ejecución básica
python mi_script.py

# Con argumentos
python mi_script.py arg1 arg2

# Script ejecutable (Unix/Linux)
chmod +x mi_script.py
./mi_script.py
```

**Jupyter:**

```bash
# Instalar
pip install jupyter

# Iniciar servidor
jupyter notebook

# O JupyterLab
jupyter lab
```

---

## Sintaxis y Estructura Básica

### Elementos Fundamentales

<div style="background-color: black; border-radius: 10px; padding: 20px; margin: 20px 0;">

```mermaid
flowchart LR
    A[Sintaxis Python] --> B[Indentación]
    A --> C[Comentarios]
    A --> D[Variables]
    A --> E[Operadores]

    B --> B1[4 espacios estándar]
    B --> B2[Define bloques]
    B --> B3[Sin llaves]

    C --> C1[# Línea simple]
    C --> C2[Docstrings]
    C --> C3[Documentación]

    D --> D1[Sin declaración de tipo]
    D --> D2[snake_case]
    D --> D3[Asignación dinámica]

    E --> E1[Aritméticos]
    E --> E2[Lógicos]
    E --> E3[Comparación]

    style A fill:#B8860B,stroke:#fff,stroke-width:4px,color:#fff
```

</div>

### Estructura de un Programa Python

<div style="background-color: black; border-radius: 10px; padding: 20px; margin: 20px 0;">

```mermaid
flowchart TD
    A[Archivo .py] --> B[Shebang opcional]
    B --> C[Encoding declaration]
    C --> D[Docstring del módulo]
    D --> E[Imports]
    E --> F[Constantes globales]
    F --> G[Definiciones de clases]
    G --> H[Definiciones de funciones]
    H --> I[Código principal]
    I --> J{if __name__ == '__main__'}
    J -->|Sí| K[Ejecutar como script]
    J -->|No| L[Importado como módulo]

    style A fill:#8B008B,stroke:#fff,stroke-width:4px,color:#fff
    style J fill:#DAA520,stroke:#fff,stroke-width:2px,color:#fff
```

</div>

### Tipos de Datos Básicos

<div style="background-color: black; border-radius: 10px; padding: 20px; margin: 20px 0;">

```mermaid
graph LR
    A[Tipos de Datos Python] --> B[Numéricos]
    A --> C[Secuencias]
    A --> D[Mapeos]
    A --> E[Sets]
    A --> F[Booleanos]
    A --> G[None]

    B --> B1[int - Enteros]
    B --> B2[float - Decimales]
    B --> B3[complex - Complejos]

    C --> C1[str - Cadenas]
    C --> C2[list - Listas]
    C --> C3[tuple - Tuplas]
    C --> C4[range - Rangos]

    D --> D1[dict - Diccionarios]

    E --> E1[set - Conjuntos]
    E --> E2[frozenset - Inmutables]

    style A fill:#8B4513,stroke:#fff,stroke-width:4px,color:#fff
```

</div>

### Estructuras de Control

<div style="background-color: black; border-radius: 10px; padding: 20px; margin: 20px 0;">

```mermaid
graph LR
    A[Control de Flujo] --> B[Condicionales]
    A --> C[Bucles]
    A --> D[Control de Bucles]

    B --> B1[if]
    B --> B2[elif]
    B --> B3[else]
    B --> B4[Ternario]

    C --> C1[for]
    C --> C2[while]
    C --> C3[Comprensiones]

    D --> D1[break]
    D --> D2[continue]
    D --> D3[pass]
    D --> D4[else en bucles]
```

</div>

### Ejemplo de Sintaxis Completa

```python
#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Módulo de ejemplo mostrando sintaxis básica de Python.
"""

# Imports
from typing import List, Optional
import math

# Constante global
PI = 3.14159

class Calculadora:
    """Clase ejemplo con operaciones básicas."""

    def __init__(self, nombre: str):
        self.nombre = nombre
        self.historial: List[float] = []

    def sumar(self, a: float, b: float) -> float:
        """Suma dos números."""
        resultado = a + b
        self.historial.append(resultado)
        return resultado

    def area_circulo(self, radio: float) -> float:
        """Calcula el área de un círculo."""
        return PI * radio ** 2

def main():
    """Función principal."""
    # Crear instancia
    calc = Calculadora("MiCalc")

    # Operaciones
    suma = calc.sumar(5, 3)
    area = calc.area_circulo(10)

    # Condicional
    if suma > 5:
        print(f"La suma {suma} es mayor que 5")

    # Bucle for
    for i in range(3):
        print(f"Iteración {i}")

    # List comprehension
    cuadrados = [x**2 for x in range(5)]
    print(cuadrados)

if __name__ == "__main__":
    main()
```

### Convenciones de Estilo (PEP 8)

<div style="background-color: black; border-radius: 10px; padding: 20px; margin: 20px 0;">

```mermaid
graph LR
    A[PEP 8 - Guía de Estilo] --> B[Nombres]
    A --> C[Espaciado]
    A --> D[Longitud de línea]
    A --> E[Imports]

    B --> B1[snake_case: variables, funciones]
    B --> B2[PascalCase: clases]
    B --> B3[UPPER_CASE: constantes]

    C --> C1[4 espacios indentación]
    C --> C2[Espacio alrededor operadores]

    D --> D1[Máximo 79 caracteres]

    E --> E1[Imports al inicio]
    E --> E2[Orden: stdlib, terceros, propios]

    style A fill:#2C5F8D,stroke:#fff,stroke-width:4px,color:#fff
```

</div>

---

<style>
  .background-images {
    pointer-events: none;
  }
  .background-images* {
    pointer-events: auto;
  }
</style>

<div
  class="background-images"
  style="
    position: fixed;
    top:0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    opacity: 0.1;
    z-index: 0;
  "
>
<img
  src="../assets/back2.png"
  alt="BOOTCAMP 4.0 Badge"
  style="
    position: fixed;
    right: 0;
    min-width: 100%;
    z-index: 1;
  "
/>
<img
  src="../assets/back1.png"
  alt="BOOTCAMP 4.0 Badge"
  style="
    position: fixed;
    top: 0;
    left: 0;
    min-width: 100%;
    height: 100vh;
    z-index: 0;
  "
/>
</div>
