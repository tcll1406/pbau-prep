---
title: Matemàtiques Aplicades a les CCSS II (MACS)
---

# MATEMÀTIQUES APLICADES A LES CIÈNCIES SOCIALS II - RESUM PBAU

## 1. PROBABILITAT (Part A - Obligatòria)

**Successos i Fórmules Bàsiques:**
*Sempre s'han de definir els successos amb lletres majúscules (Ex: $A=$ "Llegir el diari").*
* **Unió:** $P(A \cup B) = P(A) + P(B) - P(A \cap B)$
* **Succés contrari:** $P(\overline{A}) = 1 - P(A)$
* **Lleis de De Morgan:** $P(\overline{A} \cap \overline{B}) = P(\overline{A \cup B})$ i $P(\overline{A} \cup \overline{B}) = P(\overline{A \cap B})$
* **Diferència:** $P(A - B) = P(A \cap \overline{B}) = P(A) - P(A \cap B)$

**Probabilitat Condicionada i Independència:**
La probabilitat que passi $A$ sabent que ha passat $B$:
$$P(A|B) = \frac{P(A \cap B)}{P(B)} \Rightarrow P(A \cap B) = P(A|B) \cdot P(B)$$
Dos successos són **independents** si (i només si): $P(A \cap B) = P(A) \cdot P(B)$.

**Teoremes Fonamentals (Ús de Diagrames d'Arbre):**
* **Teorema de la Probabilitat Total:** $P(B) = P(B|A_1) \cdot P(A_1) + P(B|A_2) \cdot P(A_2) + \dots$
* **Teorema de Bayes:** Serveix per calcular probabilitats "cap enrere" a l'arbre:
    $$P(A_i|B) = \frac{P(B|A_i) \cdot P(A_i)}{P(B)}$$

---

## 2. ESTADÍSTICA INFERENCIAL (Part A - Obligatòria)

**La Distribució Normal:**
*Sempre s'ha d'escriure la notació: $X \sim N(\mu, \sigma)$.*
Per poder cercar probabilitats a la taula, s'ha de **tipificar** la variable per passar a una normal estàndard $Z \sim N(0, 1)$:
$$Z = \frac{X - \mu}{\sigma}$$

**Intervals de Confiança per a la Mitjana Poblacional:**
Donada una mostra de mida $n$ amb una mitjana mostral $\bar{x}$, i una desviació típica poblacional $\sigma$:
$$IC = \left( \bar{x} - E, \, \bar{x} + E \right)$$
On l'Error Màxim Admès ($E$) es calcula com:
$$E = z_{\alpha/2} \cdot \frac{\sigma}{\sqrt{n}}$$

**Mida de la Mostra:**
Si volem assegurar un error màxim $E$ amb un nivell de confiança $1 - \alpha$, la mida mínima de la mostra s'obté aïllant la $n$:
$$n = \left( \frac{z_{\alpha/2} \cdot \sigma}{E} \right)^2$$
*(Recordatori: La mida de la mostra $n$ sempre s'ha d'arrodonir cap a l'enter superior per assegurar que l'error no se superi).*

---

## 3. ÀLGEBRA (Part B)

**Matrius i Operacions:**
Per multiplicar matrius ($A \cdot B$), el nombre de columnes de $A$ ha de coincidir amb el nombre de files de $B$.
$$A \cdot I = I \cdot A = A$$
**Matriu Inversa:**
Una matriu $A$ és invertible si $|A| \neq 0$.
$$A^{-1} = \frac{1}{|A|} \text{Adj}(A)^T$$

**Equacions Matricials:**
*Compte! El producte de matrius no és commutatiu. Cal multiplicar per la inversa pel costat correcte.*
* Si $A \cdot X + B = C \Rightarrow A \cdot X = C - B \Rightarrow X = A^{-1} \cdot (C - B)$
* Si $X \cdot A = B \Rightarrow X \cdot A \cdot A^{-1} = B \cdot A^{-1} \Rightarrow X = B \cdot A^{-1}$

**Sistemes d'Equacions (Cramer i Rouché-Frobenius):**
* Si $|A| \neq 0 \Rightarrow$ Sistema Compatible Determinat (1 solució).
* Si $|A| = 0 \Rightarrow$ Sistema Compatible Indeterminat o Incompatible.

---

## 4. ANÀLISI (Part C)

**Continuïtat i Derivabilitat:**
Una funció $f(x)$ definida a trossos és **contínua** en $x=a$ si:
$$\lim_{x \to a^-} f(x) = \lim_{x \to a^+} f(x) = f(a)$$
És **derivable** si, a més de ser contínua, compleix que:
$$f'(a^-) = f'(a^+)$$

**Aplicacions de la Derivada (Optimització):**
1.  Es calcula la funció a optimitzar.
2.  Es troben els **punts crítics** igualant la derivada a zero: $f'(x) = 0$.
3.  Es comprova si és màxim o mínim analitzant el signe de la derivada abans i després del punt, o usant la segona derivada:
    * Si $f''(x) > 0 \Rightarrow$ Mínim.
    * Si $f''(x) < 0 \Rightarrow$ Màxim.

**Integrals i Càlcul d'Àrees:**
*Sempre s'ha d'incloure el diferencial $dx$.*
Àrea compresa entre una funció $f(x)$ i l'eix OX entre $x=a$ i $x=b$:
$$A = \int_{a}^{b} |f(x)| \,dx$$
*(S'han de trobar els punts de tall amb l'eix $OX$ igualant $f(x)=0$ per dividir la integral en trossos si la funció canvia de signe).*