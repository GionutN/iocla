# Task 4 - CPUID

CPUID este o instructiune speciala a procesoarelor care folosesc arhitectura x86, sau derivate, care permite aflarea unor informatii despre procesorul pe care se executa aceasta instructiune.
Instructiunea cpuid nu primeste parametri, ci se executa in functie de continutul registrului eax si, in anumite situatii, a registrului ecx.
Informatiile date ca raspuns sunt stocate in registrele eax, ebx, ecx, edx.
Semnificatia rezultatelor este documentata in specificatiile producatorilor de procesoare x86, [Intel](https://web.archive.org/web/20120625025623/http://www.intel.com/Assets/PDF/appnote/241618.pdf) si [AMD](https://www.amd.com/system/files/TechDocs/25481.pdf).

Vi se cere sa aflati, folosind cpuid, urmatoarele informatii despre procesor:
 - Manufacturer ID-ul (2p + 2p)
 - daca procesorl foloseste [APIC](https://en.wikipedia.org/wiki/Advanced_Programmable_Interrupt_Controller) (1p)
 - daca este suportata instructiunea [RDRAND](https://en.wikipedia.org/wiki/RDRAND) (1p)
 - in caz ca procesorul este de tip `Intel`, daca suporta setul de instructiuni [MPX](https://en.wikipedia.org/wiki/Intel_MPX) (2p)
 - in caz ca procesorul este de tip `AMD`, daca suporta setul de instructiuni [SVM](https://en.wikipedia.org/wiki/X86_virtualization#AMD_virtualization_.28AMD-V.29) (3p)
 - dimensiunea liniei de cache de nivel 2 (2p)
 - dimensiunea cache-ului de nivel 2, **pentru un singur nucleu** (2p)

Implementarea se va face in fisierul `task4.asm`.

## Precizari

 - Checker-ul va verifica ce tip de procesor este prezent si va verifica output-ul functiilor voastre in functie de prezenta componentelor cerute pe sistem (daca procesorul vostru este Intel si nu are MPX, se va astepta ca rezultatul pentru MPX sa fie 0)
 - Checker-ul va emula celalalt procesor, cu **toate componentele cerute**, folosind `qemu-i386`.
 - Implementarea trebuie sa poata verifica si componentele specifice Intel, si cele specifice AMD, in functie de ce tip de procesor e detectat.
