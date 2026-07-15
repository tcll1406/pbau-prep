UPDATE questions SET
  statement_es = 'Según la segunda ley de Kepler, ¿qué le sucede a la velocidad orbital de un planeta cuando se acerca al periastro?',
  option_a_es = 'Aumenta para conservar el momento angular.',
  option_b_es = 'Disminuye a causa de la atracción gravitatoria.',
  option_c_es = 'Se mantiene constante a lo largo de toda la órbita.',
  option_d_es = 'Se anula momentáneamente antes de cambiar de dirección.',
  feedback_es = 'Correcto. Para conservar el momento angular ($L = m \cdot v \cdot r$), si el radio disminuye, la velocidad debe aumentar.'
WHERE statement = 'Segons la segona llei de Kepler, què li succeeix a la velocitat orbital d''un planeta quan s''apropa al periastre?' AND topic = 'Camp Gravitatori i Lleis de Kepler';

UPDATE questions SET
  statement_es = 'Si la distancia entre dos planetas se reduce a la mitad, la fuerza de atracción gravitatoria entre ellos:',
  option_a_es = 'Se reduce a la mitad.',
  option_b_es = 'Se duplica.',
  option_c_es = 'Se cuadruplica.',
  option_d_es = 'Se mantiene constante.',
  feedback_es = 'Según la ley de Newton ($F \propto 1/r^2$), si $r$ se divide entre 2, la fuerza se multiplica por $2^2 = 4$.'
WHERE statement = 'Si la distància entre dos planetes es redueix a la meitat, la força d''atracció gravitatòria entre ells:' AND topic = 'Camp Gravitatori i Lleis de Kepler';

UPDATE questions SET
  statement_es = 'La energía mecánica de un satélite en órbita circular es:',
  option_a_es = 'Igual a su energía cinética.',
  option_b_es = 'Negativa e igual a la mitad de su energía potencial.',
  option_c_es = 'Cero.',
  option_d_es = 'Positiva e igual al doble de la energía cinética.',
  feedback_es = 'En una órbita circular, $E_c = -E_p/2$, de manera que $E_m = E_c + E_p = E_p/2$.'
WHERE statement = 'L''energia mecànica d''un satèl·lit en òrbita circular és:' AND topic = 'Camp Gravitatori i Lleis de Kepler';

UPDATE questions SET
  statement_es = 'La velocidad de escape de un cohete desde la Tierra depende de:',
  option_a_es = 'La masa del cohete.',
  option_b_es = 'El ángulo de lanzamiento.',
  option_c_es = 'La masa y el radio de la Tierra exclusivamente.',
  option_d_es = 'La energía cinética inicial únicamente.',
  feedback_es = 'Se obtiene igualando $E_m = 0$, resultando en $v = \sqrt{2GM/R}$, donde no interviene la masa del cohete.'
WHERE statement = 'La velocitat d''escapament d''un coet des de la Terra depèn de:' AND topic = 'Camp Gravitatori i Lleis de Kepler';

UPDATE questions SET
  statement_es = 'El trabajo realizado por el campo gravitatorio terrestre para mover un satélite en una órbita circular vale:',
  option_a_es = 'Cero.',
  option_b_es = 'Depende de la masa del satélite.',
  option_c_es = 'Es positivo porque la fuerza es atractiva.',
  option_d_es = 'Igual a la energía cinética.',
  feedback_es = 'El potencial es constante en una órbita circular ($\Delta V = 0$), por tanto $W = -m\Delta V = 0$.'
WHERE statement = 'El treball fet pel camp gravitatori terrestre per moure un satèl·lit en una òrbita circular val:' AND topic = 'Camp Gravitatori i Lleis de Kepler';

UPDATE questions SET
  statement_es = 'El momento angular de un planeta que orbita el Sol en una elipse:',
  option_a_es = 'Es máximo en el periastro.',
  option_b_es = 'Es mínimo en el apoastro.',
  option_c_es = 'Es rigurosamente constante.',
  option_d_es = 'Depende de la energía mecánica.',
  feedback_es = 'Como la fuerza gravitatoria es central, el momento de las fuerzas es cero y el momento angular se conserva.'
WHERE statement = 'El moment angular d''un planeta que orbita el Sol en una el·lipse:' AND topic = 'Camp Gravitatori i Lleis de Kepler';

UPDATE questions SET
  statement_es = 'Según la 3ª Ley de Kepler, si el radio orbital se cuadruplica, el periodo orbital:',
  option_a_es = 'Se multiplica por 2.',
  option_b_es = 'Se multiplica por 4.',
  option_c_es = 'Se multiplica por 8.',
  option_d_es = 'Se divide entre 2.',
  feedback_es = 'Como $T^2 \propto r^3$, si $r$ es $4$ veces mayor, $r^3 = 64$, y por tanto $T = \sqrt{64} = 8$.'
WHERE statement = 'Segons la 3a Llei de Kepler, si el radi orbital es quadruplica, el període orbital:' AND topic = 'Camp Gravitatori i Lleis de Kepler';

UPDATE questions SET
  statement_es = 'El campo gravitatorio en el interior de un planeta esférico homogéneo (a distancia $r < R$):',
  option_a_es = 'Es cero.',
  option_b_es = 'Disminuye proporcionalmente al cuadrado de $r$.',
  option_c_es = 'Crece linealmente con la distancia $r$ desde el centro.',
  option_d_es = 'Es igual que en la superficie.',
  feedback_es = 'En el interior de una esfera homogénea, $g$ crece de forma directamente proporcional a $r$ hasta llegar a la superficie.'
WHERE statement = 'El camp gravitatori a l''interior d''un planeta esfèric homogeni (a distància $r < R$):' AND topic = 'Camp Gravitatori i Lleis de Kepler';

UPDATE questions SET
  statement_es = 'Dos masas puntuales están separadas una distancia $d$. El campo gravitatorio total se anula en un punto:',
  option_a_es = 'Más cercano a la masa más pequeña.',
  option_b_es = 'Más cercano a la masa más grande.',
  option_c_es = 'Exactamente en el medio.',
  option_d_es = 'Nunca se puede anular.',
  feedback_es = 'Para igualar los campos ($GM_1/r_1^2 = GM_2/r_2^2$), el punto debe estar más cerca de la masa menor para compensar.'
WHERE statement = 'Dues masses puntuals estan separades una distància $d$. El camp gravitatori total s''anul·la en un punt:' AND topic = 'Camp Gravitatori i Lleis de Kepler';

UPDATE questions SET
  statement_es = 'La energía potencial gravitatoria de dos masas separadas una distancia finita:',
  option_a_es = 'Puede ser positiva si las masas son muy grandes.',
  option_b_es = 'Es siempre negativa.',
  option_c_es = 'Es nula.',
  option_d_es = 'Depende de si el movimiento es de atracción o repulsión.',
  feedback_es = 'Por convenio, es cero en el infinito. Como hay que realizar trabajo para separarlas contra la atracción, $E_p$ a distancia finita siempre es negativa.'
WHERE statement = 'L''energia potencial gravitatòria de dues masses separades una distància finita:' AND topic = 'Camp Gravitatori i Lleis de Kepler';

UPDATE questions SET
  statement_es = 'Las líneas de campo eléctrico creadas por una carga negativa:',
  option_a_es = 'Son circunferencias cerradas.',
  option_b_es = 'Son radiales y apuntan hacia el exterior.',
  option_c_es = 'Son radiales y apuntan hacia la carga.',
  option_d_es = 'No existen para cargas negativas.',
  feedback_es = 'Las líneas indican la trayectoria de una carga de prueba positiva, que sería atraída hacia la carga negativa.'
WHERE statement = 'Les línies de camp elèctric creades per una càrrega negativa:' AND topic = 'Camp Elèctric';

UPDATE questions SET
  statement_es = 'Si acercamos un electrón a una carga negativa fija, la energía potencial del sistema:',
  option_a_es = 'Disminuye.',
  option_b_es = 'Aumenta.',
  option_c_es = 'Se mantiene constante.',
  option_d_es = 'Se anula.',
  feedback_es = 'Estamos realizando trabajo contra la fuerza de repulsión eléctrica para acercarlos, aumentando la energía almacenada (potencial).'
WHERE statement = 'Si apropem un electró a una càrrega negativa fixa, l''energia potencial del sistema:' AND topic = 'Camp Elèctric';

UPDATE questions SET
  statement_es = 'Dos cargas positivas diferentes están separadas por una distancia. El campo eléctrico puede ser nulo:',
  option_a_es = 'En ningún punto del espacio.',
  option_b_es = 'Fuera del segmento que las une.',
  option_c_es = 'En el segmento que las une, más cerca de la carga pequeña.',
  option_d_es = 'En el segmento que las une, más cerca de la carga grande.',
  feedback_es = 'Los vectores se oponen entre las cargas, y hay que acercarse a la menor para que los módulos se igualen.'
WHERE statement = 'Dues càrregues positives diferents estan separades per una distància. El camp elèctric pot ser nul:' AND topic = 'Camp Elèctric';

UPDATE questions SET
  statement_es = 'El trabajo realizado por el campo eléctrico para mover una carga por una superficie equipotencial es:',
  option_a_es = 'Igual a la energía cinética final.',
  option_b_es = 'Máximo.',
  option_c_es = 'Negativo.',
  option_d_es = 'Cero.',
  feedback_es = 'Como en la superficie equipotencial $\Delta V = 0$, el trabajo $W = -q\Delta V$ es necesariamente cero.'
WHERE statement = 'El treball fet pel camp elèctric per moure una càrrega per una superfície equipotencial és:' AND topic = 'Camp Elèctric';

UPDATE questions SET
  statement_es = '¿Cuál es la unidad del campo eléctrico en el Sistema Internacional?',
  option_a_es = 'Julios/Culombio (J/C)',
  option_b_es = 'Newtons/Culombio (N/C)',
  option_c_es = 'Voltios (V)',
  option_d_es = 'Teslas (T)',
  feedback_es = 'Según la definición $\vec{E} = \vec{F}/q$, la unidad es Newton partido por Culombio. (También V/m).'
WHERE statement = 'Quina és la unitat del camp elèctric en el Sistema Internacional?' AND topic = 'Camp Elèctric';

UPDATE questions SET
  statement_es = 'Si se introduce un dieléctrico de permitividad relativa $\epsilon_r > 1$ entre dos cargas, la fuerza eléctrica:',
  option_a_es = 'Disminuye.',
  option_b_es = 'Aumenta.',
  option_c_es = 'Se mantiene igual.',
  option_d_es = 'Se invierte el sentido.',
  feedback_es = 'La constante $k = 1/(4\pi\epsilon)$. Si la permitividad del medio aumenta, la constante disminuye, y la fuerza es menor.'
WHERE statement = 'Si s''introdueix un dielèctric de permitivitat relativa $\epsilon_r > 1$ entre dues càrregues, la força elèctrica:' AND topic = 'Camp Elèctric';

UPDATE questions SET
  statement_es = 'Un protón y un electrón se dejan libres en un campo eléctrico uniforme.',
  option_a_es = 'Tienen la misma aceleración.',
  option_b_es = 'El protón tiene más aceleración.',
  option_c_es = 'El electrón tiene mucha más aceleración.',
  option_d_es = 'No se aceleran.',
  feedback_es = 'Las fuerzas son iguales en módulo, pero como la masa del electrón es mucho menor, su aceleración ($a=F/m$) es mucho mayor.'
WHERE statement = 'Un protó i un electró es deixen lliures en un camp elèctric uniforme.' AND topic = 'Camp Elèctric';

UPDATE questions SET
  statement_es = 'El campo eléctrico en el interior de un conductor en equilibrio electrostático:',
  option_a_es = 'Es constante y depende de la carga exterior.',
  option_b_es = 'Es cero.',
  option_c_es = 'Es máximo.',
  option_d_es = 'Depende de la densidad del material.',
  feedback_es = 'Si hubiera campo en el interior, las cargas libres se moverían. Como está en equilibrio, $\vec{E} = 0$.'
WHERE statement = 'El camp elèctric a l''interior d''un conductor en equilibri electrostàtic:' AND topic = 'Camp Elèctric';

UPDATE questions SET
  statement_es = 'Para calcular el potencial total en un punto creado por un sistema de cargas:',
  option_a_es = 'Se suman vectorialmente los potenciales.',
  option_b_es = 'Se multiplican las cargas.',
  option_c_es = 'Se suman escalarmente, respetando el signo de cada carga.',
  option_d_es = 'Se hace el producto vectorial.',
  feedback_es = 'El potencial eléctrico es una magnitud escalar, por tanto es una simple suma algebraica donde el signo de $q$ es vital.'
WHERE statement = 'Per calcular el potencial total en un punt creat per un sistema de càrregues:' AND topic = 'Camp Elèctric';

UPDATE questions SET
  statement_es = 'Si una carga positiva se mueve a favor de las líneas de campo eléctrico:',
  option_a_es = 'Va hacia potenciales más bajos.',
  option_b_es = 'Va hacia potenciales más altos.',
  option_c_es = 'El potencial no cambia.',
  option_d_es = 'La energía potencial aumenta.',
  feedback_es = 'El campo eléctrico siempre apunta desde las zonas de alto potencial hacia las zonas de bajo potencial.'
WHERE statement = 'Si una càrrega positiva es mou a favor de les línies de camp elèctric:' AND topic = 'Camp Elèctric';

UPDATE questions SET
  statement_es = 'Un electrón entra paralelo a las líneas de un campo magnético uniforme. ¿Qué trayectoria describirá?',
  option_a_es = 'Circular.',
  option_b_es = 'Parabólica.',
  option_c_es = 'Rectilínea.',
  option_d_es = 'Helicoidal.',
  feedback_es = 'La fuerza de Lorentz es $\vec{F} = q(\vec{v} \times \vec{B})$. Si $\vec{v}$ y $\vec{B}$ son paralelos, el producto vectorial es cero, y no hay fuerza magnética.'
WHERE statement = 'Un electró entra paral·lel a les línies d''un camp magnètic uniforme. Quina trajectòria descriurà?' AND topic = 'Camp Magnètic i Inducció';

UPDATE questions SET
  statement_es = 'Dos hilos paralelos transportan corriente en sentidos opuestos. Entre ellos habrá:',
  option_a_es = 'Una fuerza de atracción.',
  option_b_es = 'Una fuerza de repulsión.',
  option_c_es = 'Ninguna fuerza.',
  option_d_es = 'Un par de torsión.',
  feedback_es = 'Según la ley de Biot-Savart y la regla de la mano derecha, hilos con corrientes en sentidos opuestos se repelen.'
WHERE statement = 'Dos fils paral·lels transporten corrent en sentits oposats. Entre ells hi haurà:' AND topic = 'Camp Magnètic i Inducció';

UPDATE questions SET
  statement_es = '¿Qué establece la ley de Lenz respecto a la inducción electromagnética?',
  option_a_es = 'La fem depende del área.',
  option_b_es = 'La corriente inducida se opone a la causa que la produce (variación del flujo).',
  option_c_es = 'El flujo es constante.',
  option_d_es = 'La fem es directamente proporcional a la resistencia.',
  feedback_es = 'Justifica el signo negativo ($-$) de la ley de Faraday, indicando que el campo inducido actúa para compensar el cambio de flujo magnético.'
WHERE statement = 'Què estableix la llei de Lenz respecte a la inducció electromagnètica?' AND topic = 'Camp Magnètic i Inducció';

UPDATE questions SET
  statement_es = 'La unidad de flujo magnético en el SI es:',
  option_a_es = 'Tesla (T)',
  option_b_es = 'Gauss (G)',
  option_c_es = 'Weber (Wb)',
  option_d_es = 'Henry (H)',
  feedback_es = 'El flujo ($\Phi = B \cdot S \cdot \cos\alpha$) se mide en Webers, donde $1 \text{ Wb} = 1 \text{ T} \cdot \text{m}^2$.'
WHERE statement = 'La unitat de flux magnètic en el SI és:' AND topic = 'Camp Magnètic i Inducció';

UPDATE questions SET
  statement_es = 'Si el radio de la trayectoria circular de una partícula en un campo magnético se duplica sin cambiar de campo, quiere decir que su velocidad:',
  option_a_es = 'Se ha reducido a la mitad.',
  option_b_es = 'Se mantiene igual.',
  option_c_es = 'Se ha duplicado.',
  option_d_es = 'Se ha cuadruplicado.',
  feedback_es = 'Igualando fuerza centrípeta y de Lorentz se obtiene $R = mv / qB$. El radio es directamente proporcional a la velocidad.'
WHERE statement = 'Si el radi de la trajectòria circular d''una partícula en un camp magnètic es duplica sense canviar de camp, vol dir que la seva velocitat:' AND topic = 'Camp Magnètic i Inducció';

UPDATE questions SET
  statement_es = 'En un generador de corriente alterna, la fuerza electromotriz máxima se alcanza cuando:',
  option_a_es = 'El flujo magnético es máximo.',
  option_b_es = 'El flujo magnético es nulo y la variación es máxima.',
  option_c_es = 'La espira está detenida.',
  option_d_es = 'El ángulo entre el campo y la normal es de $0^\circ$.',
  feedback_es = 'La fem es la derivada del flujo ($\varepsilon = -d\Phi/dt$). Cuando la función flujo pasa por cero, su pendiente (variación) es máxima.'
WHERE statement = 'En un generador de corrent altern, la força electromotriu màxima s''assoleix quan:' AND topic = 'Camp Magnètic i Inducció';

UPDATE questions SET
  statement_es = 'El campo magnético en el centro de una espira circular aumenta si:',
  option_a_es = 'Aumentamos su radio.',
  option_b_es = 'Reducimos la intensidad de corriente.',
  option_c_es = 'Reducimos su radio.',
  option_d_es = 'Cambiamos el sentido de la corriente.',
  feedback_es = 'La fórmula es $B = \mu_0 I / (2R)$. Al reducir el denominador (radio), el valor del campo aumenta.'
WHERE statement = 'El camp magnètic en el centre d''una espira circular augmenta si:' AND topic = 'Camp Magnètic i Inducció';

UPDATE questions SET
  statement_es = 'La fuerza magnética sobre una carga en movimiento produce un trabajo:',
  option_a_es = 'Máximo cuando la trayectoria es circular.',
  option_b_es = 'Nulo en cualquier caso.',
  option_c_es = 'Igual a la variación de energía cinética.',
  option_d_es = 'Proporcional a la carga.',
  feedback_es = 'Como la fuerza magnética de Lorentz siempre es perpendicular al vector velocidad, su trabajo es siempre cero ($W = \vec{F} \cdot d\vec{r} = 0$).'
WHERE statement = 'La força magnètica sobre una càrrega en moviment produeix un treball:' AND topic = 'Camp Magnètic i Inducció';

UPDATE questions SET
  statement_es = '¿Qué partícula no sufrirá ninguna desviación al atravesar un campo magnético?',
  option_a_es = 'Un electrón rápido.',
  option_b_es = 'Un protón.',
  option_c_es = 'Un neutrón.',
  option_d_es = 'Un ion positivo.',
  feedback_es = 'La fuerza de Lorentz ($F = qvB$) depende directamente de la carga eléctrica. Como el neutrón tiene $q=0$, no interactúa con el campo magnético.'
WHERE statement = 'Quina partícula no patirà cap desviació en travessar un camp magnètic?' AND topic = 'Camp Magnètic i Inducció';

UPDATE questions SET
  statement_es = 'Si introducimos rápidamente un imán dentro de una bobina, la corriente inducida:',
  option_a_es = 'Generará un campo magnético que atraerá el imán.',
  option_b_es = 'Generará un campo magnético que repelerá el imán.',
  option_c_es = 'No generará ningún campo magnético extra.',
  option_d_es = 'Destruirá el campo del imán.',
  feedback_es = 'Por la ley de Lenz, la espira se opone al aumento del flujo, generando un polo magnético igual para repeler la intrusión del imán y frenar el cambio.'
WHERE statement = 'Si introduïm ràpidament un imant dins d''una bobina, el corrent induït:' AND topic = 'Camp Magnètic i Inducció';

UPDATE questions SET
  statement_es = 'En la ecuación de una onda armónica $y(x,t) = A \sin(kx - \omega t)$, el signo negativo del interior indica que:',
  option_a_es = 'La amplitud disminuye.',
  option_b_es = 'La onda se propaga hacia la izquierda (sentido negativo de las x).',
  option_c_es = 'La onda se propaga hacia la derecha (sentido positivo de las x).',
  option_d_es = 'Es una onda estacionaria.',
  feedback_es = 'Por convenio, si los signos de $kx$ y $\omega t$ son opuestos, la onda se propaga en el sentido positivo del eje OX.'
WHERE statement = 'En l''equació d''una ona harmònica $y(x,t) = A \sin(kx - \omega t)$, el signe negatiu de l''interior indica que:' AND topic = 'Ones i Òptica';

UPDATE questions SET
  statement_es = 'Si la frecuencia de una onda aumenta manteniendo constante su velocidad de propagación, ¿qué le pasa a la longitud de onda?',
  option_a_es = 'Aumenta.',
  option_b_es = 'Disminuye.',
  option_c_es = 'Se mantiene igual.',
  option_d_es = 'Se anula.',
  feedback_es = 'La velocidad es $v = \lambda \cdot f$. Si $v$ es constante y la frecuencia $f$ aumenta, la longitud de onda $\lambda$ debe disminuir proporcionalmente.'
WHERE statement = 'Si la freqüència d''una ona augmenta mantenint constant la seva velocitat de propagació, què li passa a la longitud d''ona?' AND topic = 'Ones i Òptica';

UPDATE questions SET
  statement_es = 'Para que haya reflexión total de un rayo de luz, se debe cumplir que:',
  option_a_es = 'Pase a un medio con índice de refracción menor y supere el ángulo límite.',
  option_b_es = 'Pase a un medio con índice de refracción mayor.',
  option_c_es = 'El ángulo de incidencia sea cero (normal a la superficie).',
  option_d_es = 'Se utilice exclusivamente luz monocromática roja.',
  feedback_es = 'Condición indispensable: ir de un medio más denso ópticamente a uno menos denso ($n_1 > n_2$) para que el rayo se aleje de la normal hasta no poder salir.'
WHERE statement = 'Perquè hi hagi reflexió total d''un raig de llum, s''ha de complir que:' AND topic = 'Ones i Òptica';

UPDATE questions SET
  statement_es = 'Según el criterio DIN para lentes delgadas, si un objeto se encuentra a la izquierda de la lente, su posición $s$ es:',
  option_a_es = 'Positiva.',
  option_b_es = 'Negativa.',
  option_c_es = 'Cero.',
  option_d_es = 'Depende de si la lente es convergente o divergente.',
  feedback_es = 'Según las normas DIN, el polo del sistema óptico es el origen de coordenadas. Todo lo situado a la izquierda (de donde viene la luz) tiene coordenada negativa.'
WHERE statement = 'Segons el criteri DIN per a lents primes, si un objecte es troba a l''esquerra de la lent, la seva posició $s$ és:' AND topic = 'Ones i Òptica';

UPDATE questions SET
  statement_es = 'Si una lente convergente forma una imagen virtual:',
  option_a_es = 'El objeto está más allá del doble de la distancia focal.',
  option_b_es = 'La imagen está invertida.',
  option_c_es = 'El objeto está entre el foco objeto y el centro óptico de la lente.',
  option_d_es = 'Esto es imposible, solo forman imágenes reales.',
  feedback_es = 'Es el principio de la lupa. Cuando $|s| < f''$, la imagen que se forma es virtual, derecha y más grande.'
WHERE statement = 'Si una lent convergent forma una imatge virtual:' AND topic = 'Ones i Òptica';

UPDATE questions SET
  statement_es = 'El nivel de intensidad sonora ($\beta$) de dos altavoces emitiendo el mismo sonido:',
  option_a_es = 'Es el doble que el de un solo altavoz.',
  option_b_es = 'Suma 3 decibelios (dB) al nivel de un solo altavoz.',
  option_c_es = 'Se mantiene igual si estamos a la misma distancia.',
  option_d_es = 'Se reduce por el fenómeno de interferencia.',
  feedback_es = 'Como la escala de los decibelios es logarítmica ($\beta = 10 \log(I/I_0)$), duplicar la intensidad física ($2I$) supone sumar solo $\approx 3 \text{ dB}$ matemáticamente.'
WHERE statement = 'El nivell d''intensitat sonora ($\beta$) de dos altaveus emetent el mateix so:' AND topic = 'Ones i Òptica';

UPDATE questions SET
  statement_es = 'El color de la luz visible está determinado directamente por su:',
  option_a_es = 'Amplitud.',
  option_b_es = 'Frecuencia (o longitud de onda).',
  option_c_es = 'Velocidad en el vacío.',
  option_d_es = 'Intensidad luminosa.',
  feedback_es = 'Cada color del espectro visible corresponde a un intervalo específico de longitudes de onda (y frecuencias), siendo el rojo las más largas y el violeta las más cortas.'
WHERE statement = 'El color de la llum visible està determinat directament per la seva:' AND topic = 'Ones i Òptica';

UPDATE questions SET
  statement_es = 'Una lente divergente:',
  option_a_es = 'Forma siempre imágenes reales.',
  option_b_es = 'Tiene una distancia focal imagen ($f''$) negativa según el criterio DIN.',
  option_c_es = 'Aumenta el tamaño de las imágenes.',
  option_d_es = 'Concentra los rayos de luz en el foco imagen.',
  feedback_es = 'En las lentes divergentes, el foco imagen $F''$ se encuentra a la izquierda de la lente, por tanto su coordenada es negativa. Las imágenes que forma siempre son virtuales, derechas y menores.'
WHERE statement = 'Una lent divergent:' AND topic = 'Ones i Òptica';

UPDATE questions SET
  statement_es = '¿Cuál es la relación entre la velocidad de propagación de una onda, el número de onda ($k$) y la frecuencia angular ($\omega$)?',
  option_a_es = '$v = k / \omega$',
  option_b_es = '$v = \omega / k$',
  option_c_es = '$v = \omega \cdot k$',
  option_d_es = '$v = 1 / (\omega \cdot k)$',
  feedback_es = 'Sabiendo que $\omega = 2\pi/T$ y $k = 2\pi/\lambda$, el cociente $\omega/k$ da $\lambda/T$, que es exactamente la velocidad de propagación $v$.'
WHERE statement = 'Quina és la relació entre la velocitat de propagació d''una ona, el nombre d''ona ($k$) i la freqüència angular ($\omega$)?' AND topic = 'Ones i Òptica';

UPDATE questions SET
  statement_es = 'Si nos acercamos hacia una fuente de sonido que está detenida (Efecto Doppler):',
  option_a_es = 'Percibimos una frecuencia aparente mayor que la real.',
  option_b_es = 'Percibimos una frecuencia aparente menor.',
  option_c_es = 'La velocidad del sonido aumenta realmente.',
  option_d_es = 'La longitud de onda cambia.',
  feedback_es = 'Al movernos hacia la fuente, interceptamos los frentes de onda con más rapidez, lo cual incrementa la frecuencia percibida (un sonido más agudo).'
WHERE statement = 'Si ens apropem cap a una font de so que està aturada (Efecte Doppler):' AND topic = 'Ones i Òptica';

UPDATE questions SET
  statement_es = 'En el efecto fotoeléctrico, si aumentamos la intensidad de la luz incidente manteniendo la frecuencia:',
  option_a_es = 'Los electrones se emiten con más energía cinética.',
  option_b_es = 'El trabajo de extracción del material disminuye.',
  option_c_es = 'Se emiten más electrones, pero con la misma energía cinética.',
  option_d_es = 'No se emitirá ningún electrón.',
  feedback_es = 'La intensidad aumenta el número de fotones incidentes (y por tanto el número de electrones arrancados), pero la energía individual de cada electrón solo depende de la frecuencia de la luz.'
WHERE statement = 'A l''efecte fotoelèctric, si augmentem la intensitat de la llum incident mantenint la freqüència:' AND topic = 'Física Moderna';

UPDATE questions SET
  statement_es = 'El trabajo de extracción de un metal corresponde a:',
  option_a_es = 'La energía cinética máxima de los electrones emitidos.',
  option_b_es = 'La energía mínima necesaria para arrancar un electrón de su superficie.',
  option_c_es = 'La frecuencia de la luz multiplicada por la velocidad de la luz.',
  option_d_es = 'La masa defectiva del núcleo del átomo.',
  feedback_es = 'Es la energía que el fotón gasta para "liberar" el electrón del metal ($W = h \cdot f_0$). El resto de energía se transforma en energía cinética.'
WHERE statement = 'El treball d''extracció d''un metall correspon a:' AND topic = 'Física Moderna';

UPDATE questions SET
  statement_es = 'En una desintegración alfa ($\alpha$), el núcleo emisor:',
  option_a_es = 'Mantiene su número atómico y másico.',
  option_b_es = 'Reduce su número másico en 4 y el atómico en 2.',
  option_c_es = 'Aumenta su número atómico en 1.',
  option_d_es = 'Emite exclusivamente radiación electromagnética.',
  feedback_es = 'La partícula alfa es un núcleo de Helio-4 ($^4_2\text{He}$), formado por dos protones y dos neutrones, por lo que la masa (A) baja 4 y el número atómico (Z) baja 2.'
WHERE statement = 'En una desintegració alfa ($\alpha$), el nucli emissor:' AND topic = 'Física Moderna';

UPDATE questions SET
  statement_es = 'En una desintegración beta menos ($\beta^-$), dentro del núcleo:',
  option_a_es = 'Un protón se transforma en un neutrón.',
  option_b_es = 'Un neutrón se transforma en un protón, emitiendo un electrón y un antineutrino.',
  option_c_es = 'Se captura un electrón de la corteza.',
  option_d_es = 'El número másico disminuye en una unidad.',
  feedback_es = 'El número de nucleones (A) no cambia, pero un neutrón se convierte en protón, incrementando el número atómico (Z) en 1.'
WHERE statement = 'En una desintegració beta menys ($\beta^-$), dins del nucli:' AND topic = 'Física Moderna';

UPDATE questions SET
  statement_es = 'La energía de enlace de un núcleo atómico proviene de:',
  option_a_es = 'La energía cinética de los electrones orbitando.',
  option_b_es = 'El efecto fotoeléctrico.',
  option_c_es = 'El defecto de masa en su formación, según la relación $E = \Delta m \cdot c^2$.',
  option_d_es = 'La desintegración alfa exclusivamente.',
  feedback_es = 'La suma de las masas de los protones y neutrones separados es ligeramente superior a la masa del núcleo entero. Esta diferencia de masa se convierte en energía de enlace.'
WHERE statement = 'L''energia d''enllaç d''un nucli atòmic prové de:' AND topic = 'Física Moderna';

UPDATE questions SET
  statement_es = 'El tiempo necesario para que la mitad de los núcleos de una muestra radiactiva se desintegren se conoce como:',
  option_a_es = 'Vida media ($\tau$).',
  option_b_es = 'Constante de desintegración ($\lambda$).',
  option_c_es = 'Periodo de semidesintegración o semivida ($T_{1/2}$).',
  option_d_es = 'Actividad radiactiva.',
  feedback_es = 'Es el periodo ($T_{1/2} = \ln 2 / \lambda$) necesario para reducir a la mitad el número de núcleos inestables iniciales.'
WHERE statement = 'El temps necessari perquè la meitat dels nuclis d''una mostra radioactiva es desintegrin es coneix com:' AND topic = 'Física Moderna';

UPDATE questions SET
  statement_es = 'Según la ecuación de Planck, la energía de un fotón es:',
  option_a_es = 'Directamente proporcional a su longitud de onda.',
  option_b_es = 'Directamente proporcional a su frecuencia.',
  option_c_es = 'Independiente del color de la luz.',
  option_d_es = 'Proporcional al cuadrado de su velocidad.',
  feedback_es = 'La ecuación es $E = h \cdot f$. Si la frecuencia es mayor (como en la luz ultravioleta frente a la infrarroja), la energía del fotón es mayor.'
WHERE statement = 'Segons l''equació de Planck, l''energia d''un fotó és:' AND topic = 'Física Moderna';

UPDATE questions SET
  statement_es = 'La dualidad onda-corpúsculo de De Broglie afirma que:',
  option_a_es = 'Solo la luz tiene comportamiento de partícula.',
  option_b_es = 'Cualquier partícula material en movimiento tiene una longitud de onda asociada.',
  option_c_es = 'Los electrones no pueden difractarse.',
  option_d_es = 'La masa se conserva en todas las reacciones nucleares.',
  feedback_es = 'La hipótesis de De Broglie indica que $\lambda = h / (m \cdot v)$, asociando una onda a cualquier partícula con cantidad de movimiento.'
WHERE statement = 'La dualitat ona-corpuscle de De Broglie afirma que:' AND topic = 'Física Moderna';

UPDATE questions SET
  statement_es = 'El potencial de frenado en un experimento del efecto fotoeléctrico sirve para medir experimentalmente:',
  option_a_es = 'El trabajo de extracción directamente.',
  option_b_es = 'La intensidad de la luz.',
  option_c_es = 'La energía cinética máxima de los electrones emitidos.',
  option_d_es = 'La constante de Planck.',
  feedback_es = 'Se aplica un voltaje inverso justo suficiente para detener los electrones más rápidos. La energía eléctrica aplicada equivale a la energía cinética máxima ($q_e \cdot V_0 = E_c$).'
WHERE statement = 'El potencial de frenada en un experiment de l''efecte fotoelèctric serveix per mesurar experimentalment:' AND topic = 'Física Moderna';

UPDATE questions SET
  statement_es = '¿Qué ocurre con la actividad de una muestra radiactiva (medida en Becquerels) con el paso del tiempo?',
  option_a_es = 'Disminuye exponencialmente.',
  option_b_es = 'Disminuye linealmente de manera constante.',
  option_c_es = 'Se mantiene constante hasta que de repente cae a cero.',
  option_d_es = 'Aumenta si se cambia de recipiente.',
  feedback_es = 'La actividad ($A$) es proporcional al número de núcleos existentes ($A = \lambda N$). Como el número de núcleos decae de forma exponencial ($N = N_0 e^{-\lambda t}$), la actividad también lo hace.'
WHERE statement = 'Què ocorre amb l''activitat d''una mostra radioactiva (mesurada en Becquerels) amb el pas del temps?' AND topic = 'Física Moderna';

UPDATE questions SET
  statement_es = 'Una matriz cuadrada $A$ tiene matriz inversa $A^{-1}$ si y solo si:',
  option_a_es = 'Su determinante es igual a cero ($|A| = 0$).',
  option_b_es = 'Todos sus elementos de la diagonal principal son distintos de cero.',
  option_c_es = 'Su determinante es distinto de cero ($|A| \neq 0$).',
  option_d_es = 'Es una matriz simétrica.',
  feedback_es = 'Condición fundamental. La fórmula de la matriz inversa es $A^{-1} = \frac{1}{|A|} \text{Adj}(A)^T$. Si el determinante fuera cero, el cociente no existiría.'
WHERE statement = 'Una matriu quadrada $A$ té matriu inversa $A^{-1}$ si i només si:' AND topic = 'Àlgebra Lineal (Matrius i Sistemes)';

UPDATE questions SET
  statement_es = 'Si tenemos la ecuación matricial $A \cdot X = B$ y sabemos que la matriz $A$ es invertible, ¿cuál es la expresión correcta para aislar la matriz $X$?',
  option_a_es = '$X = B \cdot A^{-1}$',
  option_b_es = '$X = A^{-1} \cdot B$',
  option_c_es = '$X = \frac{B}{A}$',
  option_d_es = 'El orden no importa, el producto de matrices es conmutativo.',
  feedback_es = 'El producto de matrices NO es conmutativo. Para eliminar la $A$ de la izquierda de la $X$, debemos multiplicar por $A^{-1}$ por la izquierda en ambos lados: $A^{-1} \cdot A \cdot X = A^{-1} \cdot B$.'
WHERE statement = 'Si tenim l''equació matricial $A \cdot X = B$ i sabem que la matriu $A$ és invertible, quina és l''expressió correcta per aïllar la matriu $X$?' AND topic = 'Àlgebra Lineal (Matrius i Sistemes)';

UPDATE questions SET
  statement_es = 'Según el Teorema de Rouché-Frobenius, un sistema de ecuaciones lineales con $n$ incógnitas es un Sistema Compatible Determinado (SCD) cuando:',
  option_a_es = '$\text{Rango}(A) < \text{Rango}(A^*) = n$',
  option_b_es = '$\text{Rango}(A) = \text{Rango}(A^*) < n$',
  option_c_es = '$\text{Rango}(A) \neq \text{Rango}(A^*)$',
  option_d_es = '$\text{Rango}(A) = \text{Rango}(A^*) = n$',
  feedback_es = 'Si los rangos de la matriz de coeficientes ($A$) y la ampliada ($A^*$) coinciden, el sistema tiene solución. Si además coincide con el número de incógnitas ($n$), la solución es única (SCD).'
WHERE statement = 'Segons el Teorema de Rouché-Frobenius, un sistema d''equacions lineals amb $n$ incògnites és un Sistema Compatible Determinat (SCD) quan:' AND topic = 'Àlgebra Lineal (Matrius i Sistemes)';

UPDATE questions SET
  statement_es = '¿Cuál de las siguientes igualdades respecto al producto y la transposición de matrices es siempre cierta?',
  option_a_es = '$(A \cdot B)^T = A^T \cdot B^T$',
  option_b_es = '$(A \cdot B)^T = B^T \cdot A^T$',
  option_c_es = '$(A + B)^T = A^T \cdot B^T$',
  option_d_es = '$(A \cdot B)^{-1} = A^{-1} \cdot B^{-1}$',
  feedback_es = 'La transpuesta del producto de dos matrices es el producto de sus transpuestas pero en orden inverso. Lo mismo sucede con la inversa: $(A \cdot B)^{-1} = B^{-1} \cdot A^{-1}$.'
WHERE statement = 'Quina de les següents igualtats respecte al producte i la transposició de matrius és sempre certa?' AND topic = 'Àlgebra Lineal (Matrius i Sistemes)';

UPDATE questions SET
  statement_es = 'Si multiplicamos todos los elementos de una fila de un determinante por un número real $k$, ¿qué le pasa al valor del determinante?',
  option_a_es = 'Se mantiene igual.',
  option_b_es = 'Queda multiplicado por $k$.',
  option_c_es = 'Queda multiplicado por $k^2$.',
  option_d_es = 'Se vuelve cero.',
  feedback_es = 'Por las propiedades de los determinantes, si una línea (fila o columna) está multiplicada por un factor $k$, ese factor puede sacarse fuera multiplicando todo el determinante.'
WHERE statement = 'Si multipliquem tots els elements d''una fila d''un determinant per un nombre real $k$, què li passa al valor del determinant?' AND topic = 'Àlgebra Lineal (Matrius i Sistemes)';

UPDATE questions SET
  statement_es = '¿Puede un sistema de ecuaciones homogéneo (todos los términos independientes son cero) ser Incompatible?',
  option_a_es = 'Sí, si el determinante de la matriz principal es cero.',
  option_b_es = 'No, siempre tiene al menos la solución trivial (todas las incógnitas igual a 0).',
  option_c_es = 'Sí, si hay más ecuaciones que incógnitas.',
  option_d_es = 'Depende del Teorema de Cramer.',
  feedback_es = 'En un sistema homogéneo, $\text{Rango}(A)$ siempre será igual a $\text{Rango}(A^*)$ porque añadir una columna de ceros no aumenta el rango. Por tanto, siempre es compatible (SCD o SCI).'
WHERE statement = 'Un sistema d''equacions homogeni (tots els termes independents són zero) pot ser Incompatible?' AND topic = 'Àlgebra Lineal (Matrius i Sistemes)';

UPDATE questions SET
  statement_es = 'Si la matriz $A$ es de orden $3 \times 3$ y su determinante vale 5, ¿cuánto vale el determinante de $2A$?',
  option_a_es = '10',
  option_b_es = '15',
  option_c_es = '40',
  option_d_es = '5',
  feedback_es = 'Si multiplicamos toda una matriz de orden $n$ por $k$, el determinante queda multiplicado por $k^n$. En este caso: $|2A| = 2^3 \cdot |A| = 8 \cdot 5 = 40$.'
WHERE statement = 'Si la matriu $A$ és d''ordre $3 \times 3$ i el seu determinant val 5, quant val el determinant de $2A$?' AND topic = 'Àlgebra Lineal (Matrius i Sistemes)';

UPDATE questions SET
  statement_es = 'Según el Teorema de Rouché-Frobenius, ¿qué significa que $\text{Rango}(A) \neq \text{Rango}(A^*)$?',
  option_a_es = 'El sistema tiene infinitas soluciones.',
  option_b_es = 'El sistema tiene una única solución.',
  option_c_es = 'El sistema es Incompatible (no tiene solución).',
  option_d_es = 'Faltan datos para saberlo.',
  feedback_es = 'Si la matriz ampliada tiene más rango que la de coeficientes, significa que los términos independientes introducen una contradicción lineal (ej: $0x + 0y + 0z = 5$).'
WHERE statement = 'Segons el Teorema de Rouché-Frobenius, què significa que $\text{Rang}(A) \neq \text{Rang}(A^*)$?' AND topic = 'Àlgebra Lineal (Matrius i Sistemes)';

UPDATE questions SET
  statement_es = 'El valor de un determinante que tiene dos filas iguales o proporcionales es:',
  option_a_es = '1',
  option_b_es = 'Distinto de cero.',
  option_c_es = 'Cero.',
  option_d_es = 'Depende del resto de filas.',
  feedback_es = 'Esta es una de las propiedades básicas de los determinantes. Cualquier matriz con líneas linealmente dependientes tiene determinante cero y, por tanto, no tiene rango máximo.'
WHERE statement = 'El valor d''un determinant que té dues files iguals o proporcionals és:' AND topic = 'Àlgebra Lineal (Matrius i Sistemes)';

UPDATE questions SET
  statement_es = 'Si resolvemos un sistema mediante la Regla de Cramer, el valor de la incógnita $x$ se obtiene dividiendo:',
  option_a_es = 'El determinante de A entre el determinante de la matriz asociada a x.',
  option_b_es = 'El determinante de A* entre el determinante de A.',
  option_c_es = 'El determinante de la matriz obtenida al sustituir la columna de las $x$ por los términos independientes, entre el determinante de la matriz de coeficientes.',
  option_d_es = 'El adjunto de $x$ entre $|A|$.',
  feedback_es = 'Esta es la definición exacta de la Regla de Cramer: $x_i = \frac{|A_i|}{|A|}$. Recuerda que solo se puede aplicar si el sistema es un SCD.'
WHERE statement = 'Si resolem un sistema mitjançant la Regla de Cramer, el valor de la incògnita $x$ s''obté dividint:' AND topic = 'Àlgebra Lineal (Matrius i Sistemes)';

UPDATE questions SET
  statement_es = '¿Cuál es el vector normal (perpendicular) al plano de ecuación general $\pi: 3x - 4y + 2z - 5 = 0$?',
  option_a_es = '$\vec{n} = (3, 4, 2)$',
  option_b_es = '$\vec{n} = (-3, -4, -2)$',
  option_c_es = '$\vec{n} = (3, -4, 2)$',
  option_d_es = '$\vec{n} = (0, 0, -5)$',
  feedback_es = 'En la ecuación implícita del plano $Ax + By + Cz + D = 0$, los coeficientes de $x, y, z$ $(A, B, C)$ coinciden exactamente con las componentes del vector normal al plano.'
WHERE statement = 'Quin és el vector normal (perpendicular) al pla d''equació general $\pi: 3x - 4y + 2z - 5 = 0$?' AND topic = 'Geometria a l''Espai';

UPDATE questions SET
  statement_es = 'Dos vectores $\vec{u}$ y $\vec{v}$ no nulos son perpendiculares (ortogonales) si y solo si:',
  option_a_es = 'Su producto vectorial es cero.',
  option_b_es = 'Su producto escalar es u.',
  option_c_es = 'Su producto escalar es cero ($\vec{u} \cdot \vec{v} = 0$).',
  option_d_es = 'Son paralelos al eje Z.',
  feedback_es = 'El producto escalar es $\vec{u} \cdot \vec{v} = |\vec{u}| \cdot |\vec{v}| \cdot \cos(\alpha)$. Como el coseno de $90^\circ$ es cero, el producto escalar se anula.'
WHERE statement = 'Dos vectors $\vec{u}$ i $\vec{v}$ no nuls són perpendiculars (ortogonals) si i només si:' AND topic = 'Geometria a l''Espai';

UPDATE questions SET
  statement_es = '¿Cómo se puede encontrar un vector que sea simultáneamente perpendicular a dos vectores diferentes $\vec{u}$ y $\vec{v}$?',
  option_a_es = 'Haciendo su producto escalar.',
  option_b_es = 'Haciendo su producto vectorial ($\vec{u} \times \vec{v}$).',
  option_c_es = 'Sumando sus componentes.',
  option_d_es = 'Haciendo el producto mixto.',
  feedback_es = 'Una propiedad fundamental del producto vectorial es que da como resultado un vector ortogonal al plano formado por $\vec{u}$ y $\vec{v}$. Se utiliza mucho para encontrar el vector normal de un plano.'
WHERE statement = 'Com es pot trobar un vector que sigui simultàniament perpendicular a dos vectors diferents $\vec{u}$ i $\vec{v}$?' AND topic = 'Geometria a l''Espai';

UPDATE questions SET
  statement_es = '¿Qué condición se debe cumplir para que tres vectores $\vec{u}$, $\vec{v}$ y $\vec{w}$ sean coplanarios (estén en el mismo plano)?',
  option_a_es = 'Que la suma de los tres dé el vector nulo.',
  option_b_es = 'Que su producto escalar sea cero.',
  option_c_es = 'Que su determinante (o producto mixto) sea distinto de cero.',
  option_d_es = 'Que su determinante (o producto mixto) sea cero.',
  feedback_es = 'Si el determinante (producto mixto) de tres vectores es cero, significa que son linealmente dependientes y, por tanto, no forman un volumen. Se encuentran en el mismo plano.'
WHERE statement = 'Quina condició s''ha de complir perquè tres vectors $\vec{u}$, $\vec{v}$ i $\vec{w}$ siguin coplanaris (estiguin en el mateix pla)?' AND topic = 'Geometria a l''Espai';

UPDATE questions SET
  statement_es = '¿Qué representa geométricamente el módulo del producto vectorial de dos vectores $|\vec{u} \times \vec{v}|$?',
  option_a_es = 'El volumen del paralelepípedo que forman.',
  option_b_es = 'El área del paralelogramo construido sobre esos dos vectores.',
  option_c_es = 'La proyección de $\vec{u}$ sobre $\vec{v}$.',
  option_d_es = 'El ángulo que forman.',
  feedback_es = 'El módulo del producto vectorial coincide con el área del paralelogramo. Si dividimos este resultado entre 2, obtendremos el área del triángulo formado por los dos vectores.'
WHERE statement = 'Què representa geomètricament el mòdul del producte vectorial de dos vectors $|\vec{u} \times \vec{v}|$?' AND topic = 'Geometria a l''Espai';

UPDATE questions SET
  statement_es = 'Si una recta $r$ tiene vector director $\vec{v}_r$ y un plano $\pi$ tiene vector normal $\vec{n}_\pi$, ¿cuándo será la recta PARALELA al plano?',
  option_a_es = 'Cuando $\vec{v}_r$ y $\vec{n}_\pi$ sean paralelos.',
  option_b_es = 'Cuando el producto escalar $\vec{v}_r \cdot \vec{n}_\pi = 0$.',
  option_c_es = 'Cuando el producto vectorial $\vec{v}_r \times \vec{n}_\pi = 0$.',
  option_d_es = 'No se puede saber con estos vectores.',
  feedback_es = 'Es un razonamiento clásico que genera confusión. Para que la recta no corte al plano (sea paralela), su vector director debe ir en la misma dirección que el plano. Por tanto, $\vec{v}_r$ debe ser perpendicular al vector normal del plano ($\vec{n}_\pi$).'
WHERE statement = 'Si una recta $r$ té vector director $\vec{v}_r$ i un pla $\pi$ té vector normal $\vec{n}_\pi$, quan serà la recta PARAL·LELA al pla?' AND topic = 'Geometria a l''Espai';

UPDATE questions SET
  statement_es = 'La ecuación continua de una recta que pasa por el punto $P(p_1, p_2, p_3)$ y tiene vector director $\vec{v}=(v_1, v_2, v_3)$ es:',
  option_a_es = '$(x,y,z) = (p_1, p_2, p_3) + \lambda(v_1, v_2, v_3)$',
  option_b_es = '$\frac{x-v_1}{p_1} = \frac{y-v_2}{p_2} = \frac{z-v_3}{p_3}$',
  option_c_es = '$\frac{x-p_1}{v_1} = \frac{y-p_2}{v_2} = \frac{z-p_3}{v_3}$',
  option_d_es = '$Ax + By + Cz + D = 0$',
  feedback_es = 'Recuerda: en el numerador se restan las coordenadas del punto $P$, y en el denominador se colocan las componentes del vector director $\vec{v}$. La opción A es la ecuación vectorial.'
WHERE statement = 'L''equació contínua d''una recta que passa pel punt $P(p_1, p_2, p_3)$ i té vector director $\vec{v}=(v_1, v_2, v_3)$ és:' AND topic = 'Geometria a l''Espai';

UPDATE questions SET
  statement_es = '¿Cómo calculamos la distancia de un punto $P(x_0, y_0, z_0)$ a un plano $\pi: Ax + By + Cz + D = 0$?',
  option_a_es = 'Sustituyendo el punto en la ecuación del plano y dividiendo entre el módulo del vector normal $\sqrt{A^2+B^2+C^2}$.',
  option_b_es = 'Haciendo el producto vectorial entre el punto y el plano.',
  option_c_es = 'Encontrando la distancia entre el origen y el plano.',
  option_d_es = 'Con el producto mixto.',
  feedback_es = 'La fórmula directa es $d(P, \pi) = \frac{|Ax_0 + By_0 + Cz_0 + D|}{\sqrt{A^2 + B^2 + C^2}}$. Siempre con valor absoluto en el numerador porque es una distancia.'
WHERE statement = 'Com calculem la distància d''un punt $P(x_0, y_0, z_0)$ a un pla $\pi: Ax + By + Cz + D = 0$?' AND topic = 'Geometria a l''Espai';

UPDATE questions SET
  statement_es = 'Si queremos comprobar si cuatro puntos $A, B, C, D$ son coplanarios, debemos:',
  option_a_es = 'Comprobar si el determinante de los vectores $\vec{AB}, \vec{AC}, \vec{AD}$ es cero.',
  option_b_es = 'Sumar sus coordenadas.',
  option_c_es = 'Hacer el producto escalar de todos ellos.',
  option_d_es = 'Todas son incorrectas.',
  feedback_es = 'Se fijará un punto como origen (por ejemplo A) y se construirán los tres vectores que van hacia el resto de puntos. Si el determinante de esos 3 vectores es 0, los vectores son coplanarios y los puntos también.'
WHERE statement = 'Si volem comprovar si quatre punts $A, B, C, D$ són coplanaris, hem de:' AND topic = 'Geometria a l''Espai';

UPDATE questions SET
  statement_es = 'Si un plano $\pi_1$ y un plano $\pi_2$ tienen vectores normales paralelos, la posición relativa entre ellos es:',
  option_a_es = 'Se cortan perpendicularmente en una recta.',
  option_b_es = 'Son paralelos o coincidentes.',
  option_c_es = 'Se cruzan en un único punto.',
  option_d_es = 'No tienen ningún punto en común nunca.',
  feedback_es = 'Si sus vectores normales apuntan en la misma dirección, los planos no tienen inclinación uno respecto del otro. Para saber si son coincidentes o estrictamente paralelos hay que mirar el término independiente ($D$).'
WHERE statement = 'Si un pla $\pi_1$ i un pla $\pi_2$ tenen vectors normals paral·lels, la posició relativa entre ells és:' AND topic = 'Geometria a l''Espai';

UPDATE questions SET
  statement_es = 'Según el Teorema de Bolzano, si una función $f(x)$ es continua en un intervalo cerrado $[a,b]$ y $f(a) \cdot f(b) < 0$, ¿qué podemos garantizar?',
  option_a_es = 'Que la función es derivable en todo el intervalo.',
  option_b_es = 'Que existe al menos un punto $c \in (a,b)$ donde $f(c) = 0$.',
  option_c_es = 'Que la función tiene un máximo en el intervalo.',
  option_d_es = 'Que $f(x)$ es constante en $[a,b]$.',
  feedback_es = 'Es un teorema básico muy preguntado en la PAU. Si la función es continua y pasa de un valor positivo a uno negativo (o viceversa), obligatoriamente debe cruzar el eje X (debe valer cero en algún punto intermedio).'
WHERE statement = 'Segons el Teorema de Bolzano, si una funció $f(x)$ és contínua en un interval tancat $[a,b]$ i $f(a) \cdot f(b) < 0$, què podem garantir?' AND topic = 'Anàlisi (Funcions, Límits, Continuïtat i Derivades)';

UPDATE questions SET
  statement_es = '¿Qué indeterminación se puede resolver directamente aplicando la Regla de L''Hôpital?',
  option_a_es = '$0 \cdot \infty$',
  option_b_es = '$1^\infty$',
  option_c_es = '$0 / 0$ e $\infty / \infty$',
  option_d_es = '$\infty - \infty$',
  feedback_es = 'L''Hôpital solo se puede aplicar de forma directa en cocientes con indeterminación $0/0$ o $\infty/\infty$. Cualquier otra indeterminación (como $0 \cdot \infty$) debe transformarse previamente en un cociente.'
WHERE statement = 'Quina indeterminació es pot resoldre directament aplicant la Regla de L''Hôpital?' AND topic = 'Anàlisi (Funcions, Límits, Continuïtat i Derivades)';

UPDATE questions SET
  statement_es = 'Geométricamente, ¿qué representa el valor de la derivada de una función en un punto $x=a$ ($f''(a)$)?',
  option_a_es = 'El área bajo la curva en ese punto.',
  option_b_es = 'La pendiente de la recta tangente a la función en el punto $x=a$.',
  option_c_es = 'La ecuación de la recta normal en ese punto.',
  option_d_es = 'El límite de la función cuando $x$ tiende a $\infty$.',
  feedback_es = 'Esta es la interpretación geométrica de la derivada. La ecuación de la recta tangente en $x=a$ es $y - f(a) = f''(a) \cdot (x - a)$.'
WHERE statement = 'Geomètricament, què representa el valor de la derivada d''una funció en un punt $x=a$ ($f''(a)$)?' AND topic = 'Anàlisi (Funcions, Límits, Continuïtat i Derivades)';

UPDATE questions SET
  statement_es = 'Una función $f(x)$ presenta un MÁXIMO relativo en $x=c$ si:',
  option_a_es = '$f''(c) = 0$ y $f''''(c) > 0$.',
  option_b_es = '$f''(c) = 0$ y $f''''(c) < 0$.',
  option_c_es = '$f''''(c) = 0$.',
  option_d_es = 'El límite de la función en $x=c$ no existe.',
  feedback_es = 'La primera derivada igual a cero nos da los puntos críticos (tangente horizontal). La segunda derivada nos indica la curvatura: si es negativa, la curva es cóncava (forma de "M" invertida), indicando un máximo.'
WHERE statement = 'Una funció $f(x)$ presenta un MÀXIM relatiu en $x=c$ si:' AND topic = 'Anàlisi (Funcions, Límits, Continuïtat i Derivades)';

UPDATE questions SET
  statement_es = 'Se dice que una función es continua en $x=a$ si y solo si:',
  option_a_es = '$\lim_{x \to a^-} f(x) = \lim_{x \to a^+} f(x) = f(a)$',
  option_b_es = 'Existe $f(a)$ y es distinto de cero.',
  option_c_es = '$\lim_{x \to a} f(x) = \infty$',
  option_d_es = 'La función es derivable en ese punto.',
  feedback_es = 'Las tres condiciones para la continuidad son: los límites laterales deben existir, deben ser iguales entre sí, y ese valor debe coincidir con el valor de la función en el punto.'
WHERE statement = 'Es diu que una funció és contínua en $x=a$ si i només si:' AND topic = 'Anàlisi (Funcions, Límits, Continuïtat i Derivades)';

UPDATE questions SET
  statement_es = 'Si $\lim_{x \to \infty} f(x) = L$ (donde $L$ es un número real finito), ¿qué podemos afirmar sobre la gráfica de $f(x)$?',
  option_a_es = 'Tiene una asíntota vertical en $x=L$.',
  option_b_es = 'Tiene una asíntota oblicua.',
  option_c_es = 'Tiene una asíntota horizontal a la altura $y=L$.',
  option_d_es = 'La función no está acotada.',
  feedback_es = 'Cuando $x$ se hace muy grande (o muy negativa), la función se estabiliza en un valor concreto $L$. Esta es la definición de una Asíntota Horizontal.'
WHERE statement = 'Si $\lim_{x \to \infty} f(x) = L$ (on $L$ és un nombre real finit), què podem afirmar sobre la gràfica de $f(x)$?' AND topic = 'Anàlisi (Funcions, Límits, Continuïtat i Derivades)';

UPDATE questions SET
  statement_es = 'La función logaritmo neperiano $f(x) = \ln(x)$ tiene como dominio de definición:',
  option_a_es = 'Todo el conjunto de los números reales $\mathbb{R}$.',
  option_b_es = 'Los números reales mayores o iguales que cero $[0, \infty)$.',
  option_c_es = 'Estrictamente los números reales positivos $(0, \infty)$.',
  option_d_es = 'Los números reales distintos de cero $\mathbb{R} \setminus \{0\}$.',
  feedback_es = 'No existe el logaritmo de números negativos ni el logaritmo de cero. El argumento del logaritmo debe ser estrictamente mayor que 0.'
WHERE statement = 'La funció logaritme neperià $f(x) = \ln(x)$ té com a domini de definició:' AND topic = 'Anàlisi (Funcions, Límits, Continuïtat i Derivades)';

UPDATE questions SET
  statement_es = 'Los puntos de inflexión de una función señalan:',
  option_a_es = 'Dónde la función pasa de crecer a decrecer.',
  option_b_es = 'Un corte con el eje de abscisas.',
  option_c_es = 'Un cambio en la curvatura (de cóncava a convexa o viceversa).',
  option_d_es = 'Dónde la función no está definida.',
  feedback_es = 'Los puntos de inflexión se encuentran buscando los valores donde la segunda derivada es cero ($f''''(x) = 0$) y analizando si hay un cambio de signo antes y después del punto.'
WHERE statement = 'Els punts d''inflexió d''una funció assenyalen:' AND topic = 'Anàlisi (Funcions, Límits, Continuïtat i Derivades)';

UPDATE questions SET
  statement_es = 'La derivada de la función compuesta $f(x) = e^{g(x)}$ aplicando la Regla de la Cadena es:',
  option_a_es = '$f''(x) = g(x) \cdot e^{g(x)-1}$',
  option_b_es = '$f''(x) = e^{g''(x)}$',
  option_c_es = '$f''(x) = g''(x) \cdot e^{g(x)}$',
  option_d_es = '$f''(x) = g''(x) \cdot e^x$',
  feedback_es = 'La derivada de la exponencial de una función es la misma exponencial multiplicada por la derivada del exponente.'
WHERE statement = 'La derivada de la funció composta $f(x) = e^{g(x)}$ aplicant la Regla de la Cadena és:' AND topic = 'Anàlisi (Funcions, Límits, Continuïtat i Derivades)';

UPDATE questions SET
  statement_es = 'La relación entre continuidad y derivabilidad en un punto es la siguiente:',
  option_a_es = 'Si es continua, seguro que es derivable.',
  option_b_es = 'Si es derivable, seguro que es continua.',
  option_c_es = 'Son conceptos totalmente independientes.',
  option_d_es = 'Todas las funciones definidas a trozos no son ni continuas ni derivables.',
  feedback_es = 'La derivabilidad es una propiedad "más exigente". Toda función derivable en un punto es necesariamente continua, pero una función puede ser continua y no derivable (como en los "picos" o puntos angulosos, tipo $f(x) = |x|$ en $x=0$).'
WHERE statement = 'La relació entre continuïtat i derivabilitat en un punt és la següent:' AND topic = 'Anàlisi (Funcions, Límits, Continuïtat i Derivades)';

UPDATE questions SET
  statement_es = 'La Regla de Barrow para calcular la integral definida $\int_a^b f(x) \,dx$ establece que su valor es:',
  option_a_es = '$F(b) \cdot F(a)$',
  option_b_es = '$F(a) - F(b)$',
  option_c_es = '$F(b) - F(a)$ (donde $F(x)$ es una primitiva de $f(x)$).',
  option_d_es = 'La derivada de $f(x)$ evaluada en $b-a$.',
  feedback_es = 'La Regla de Barrow nos dice que evaluando la función primitiva en el extremo superior y restándole el valor en el extremo inferior obtenemos la integral definida.'
WHERE statement = 'La Regla de Barrow per calcular la integral definida $\int_a^b f(x) \,dx$ estableix que el seu valor és:' AND topic = 'Anàlisi (Integrals, Àrees i Teoremes)';

UPDATE questions SET
  statement_es = 'Si se quiere calcular el área comprendida entre el eje de abscisas ($y=0$) y la función $f(x)$ en el intervalo $[a,b]$, ¿cuál es el primer paso fundamental en el examen de la PAU?',
  option_a_es = 'Derivar $f(x)$ e igualar a 0.',
  option_b_es = 'Buscar los puntos de corte de la función con el eje de abscisas resolviendo $f(x) = 0$.',
  option_c_es = 'Integrar directamente entre $a$ y $b$.',
  option_d_es = 'Multiplicar por $-1$ toda la expresión.',
  feedback_es = 'Si la función corta el eje de abscisas dentro del intervalo $[a,b]$, cambiará de signo y algunas áreas serán "negativas". Hay que dividir la integral en tramos para tomar el valor absoluto de cada parte y sumarlas correctamente.'
WHERE statement = 'Si es vol calcular l''àrea compresa entre l''eix d''abscisses ($y=0$) i la funció $f(x)$ a l''interval $[a,b]$, quin és el primer pas fonamental a l''examen de la PBAU?' AND topic = 'Anàlisi (Integrals, Àrees i Teoremes)';

UPDATE questions SET
  statement_es = 'La fórmula de integración por partes se escribe como: $\int u \,dv =$',
  option_a_es = '$\int v \,du - u \cdot v$',
  option_b_es = '$u \cdot v + \int v \,du$',
  option_c_es = '$u \cdot v - \int v \,du$',
  option_d_es = '$d(u \cdot v)$',
  feedback_es = 'Conocida mnemotécnicamente como "Un Día Vi Una Vaca Menos Integrando Vestida De Uniforme".'
WHERE statement = 'La fórmula d''integració per parts s''escriu com: $\int u \,dv =$' AND topic = 'Anàlisi (Integrals, Àrees i Teoremes)';

UPDATE questions SET
  statement_es = 'La primitiva principal de la función $f(x) = \frac{1}{x}$ es:',
  option_a_es = '$\ln|x| + C$',
  option_b_es = '$e^x + C$',
  option_c_es = '$\frac{-1}{x^2} + C$',
  option_d_es = '$x^0 + C$',
  feedback_es = 'Es la excepción a la regla de la potencia para integrar $x^n$. Cuando $n=-1$, la integral genera un logaritmo neperiano. El valor absoluto garantiza que esté definido para valores negativos.'
WHERE statement = 'La primitiva principal de la funció $f(x) = \frac{1}{x}$ és:' AND topic = 'Anàlisi (Integrals, Àrees i Teoremes)';

UPDATE questions SET
  statement_es = 'Según el Teorema de Rolle, si $f(x)$ es continua en $[a,b]$, derivable en $(a,b)$ y además se cumple que $f(a) = f(b)$, entonces:',
  option_a_es = 'Existe un punto $c \in (a,b)$ donde $f(c) = 0$.',
  option_b_es = 'Existe un punto $c \in (a,b)$ donde $f''(c) = 0$.',
  option_c_es = 'La función no puede tener puntos de inflexión.',
  option_d_es = 'La integral definida entre $a$ y $b$ es cero.',
  feedback_es = 'Como la función parte de una altura y vuelve exactamente a la misma altura ($f(a)=f(b)$), forzosamente ha debido "girar" (si no es constante), de manera que hay un punto donde la recta tangente es horizontal.'
WHERE statement = 'Segons el Teorema de Rolle, si $f(x)$ és contínua en $[a,b]$, derivable en $(a,b)$ i a més es compleix que $f(a) = f(b)$, aleshores:' AND topic = 'Anàlisi (Integrals, Àrees i Teoremes)';

UPDATE questions SET
  statement_es = 'Si $f(x)$ es una función IMPAR (simetría respecto al origen, $f(-x) = -f(x)$), ¿cuánto vale la integral definida $\int_{-a}^{a} f(x) \,dx$?',
  option_a_es = 'El doble de la integral entre 0 y $a$.',
  option_b_es = 'El área total comprendida con el eje X.',
  option_c_es = 'Cero.',
  option_d_es = '$a^2/2$',
  feedback_es = 'En una función impar (como $\sin(x)$ o $x^3$), el área generada en el lado negativo del eje se cancela algebraicamente con el área generada en el lado positivo, dando un resultado neto de 0.'
WHERE statement = 'Si $f(x)$ és una funció IMPARELLA (simetria respecte l''origen, $f(-x) = -f(x)$), quant val la integral definida $\int_{-a}^{a} f(x) \,dx$?' AND topic = 'Anàlisi (Integrals, Àrees i Teoremes)';

UPDATE questions SET
  statement_es = 'El área de la región del plano limitada por dos funciones $f(x)$ y $g(x)$ que se cortan en los puntos $x=a$ y $x=b$ se calcula como:',
  option_a_es = '$\int_a^b |f(x) - g(x)| \,dx$',
  option_b_es = '$\int_a^b (f(x) \cdot g(x)) \,dx$',
  option_c_es = '$\int_a^b |f(x)| \,dx - \int_a^b |g(x)| \,dx$',
  option_d_es = '$f(b) - g(a)$',
  feedback_es = 'Siempre hay que integrar la función "techo" menos la función "suelo". Si no sabemos cuál va por encima, poner toda la diferencia en valor absoluto nos asegura un resultado de área positivo.'
WHERE statement = 'L''àrea de la regió del pla limitada per dues funcions $f(x)$ i $g(x)$ que es tallen en els punts $x=a$ i $x=b$ es calcula com:' AND topic = 'Anàlisi (Integrals, Àrees i Teoremes)';

UPDATE questions SET
  statement_es = '¿Qué técnica de integración recomienda el acrónimo ALPES / ILATE para elegir la función ''$u$''?',
  option_a_es = 'Cambio de variable.',
  option_b_es = 'Integración por fracciones simples.',
  option_c_es = 'Integración por partes.',
  option_d_es = 'Aplicación de la Regla de Barrow.',
  feedback_es = 'Sirve para determinar la prioridad de sustitución de $u$: (I)nversas trigonométricas, (L)ogarítmicas, (A)lgebraicas, (T/P)rigonométricas, (E)xponenciales.'
WHERE statement = 'Quina tècnica d''integració recomana l''acrònim ALPES / ILATE per triar la funció ''$u$''?' AND topic = 'Anàlisi (Integrals, Àrees i Teoremes)';

UPDATE questions SET
  statement_es = 'En un problema de optimización (por ejemplo minimizar material de un cilindro), una vez obtenida la función de una variable, ¿cómo garantizamos que el punto encontrado es un mínimo?',
  option_a_es = 'Si el límite cuando $x \to \infty$ es cero.',
  option_b_es = 'Si la segunda derivada evaluada en ese punto es positiva ($f''''(c) > 0$).',
  option_c_es = 'Si la segunda derivada evaluada en ese punto es negativa ($f''''(c) < 0$).',
  option_d_es = 'Si corta el eje X.',
  feedback_es = 'Encontrar dónde $f''(x) = 0$ nos da los puntos críticos. Si al sustituirlos en la segunda derivada el resultado es positivo, se trata de un mínimo (curvatura cóncava en forma de "U").'
WHERE statement = 'En un problema d''optimització (per exemple minimitzar material d''un cilindre), un cop obtinguda la funció d''una variable, com garantim que el punt trobat és un mínim?' AND topic = 'Anàlisi (Integrals, Àrees i Teoremes)';

UPDATE questions SET
  statement_es = 'El Teorema Fundamental del Cálculo relaciona dos operaciones matemáticas que, siendo de naturaleza diferente, resultan ser inversas. ¿Cuáles son?',
  option_a_es = 'Suma y Producto.',
  option_b_es = 'Límites y Continuidad.',
  option_c_es = 'Derivación e Integración.',
  option_d_es = 'Matrices y Determinantes.',
  feedback_es = 'Nos dice que si derivamos la función integral $F(x) = \int_a^x f(t) \,dt$, obtendremos la misma función original $f(x)$. Esto permite usar la regla de Barrow de manera práctica.'
WHERE statement = 'El Teorema Fonamental del Càlcul relaciona dues operacions matemàtiques que, essent de naturalesa diferent, resulten ser inverses. Quines són?' AND topic = 'Anàlisi (Integrals, Àrees i Teoremes)';

UPDATE questions SET
  statement_es = 'Según la axiomática básica, si dos sucesos $A$ y $B$ son incompatibles (mutuamente excluyentes), se cumple que:',
  option_a_es = '$P(A \cap B) = P(A) \cdot P(B)$',
  option_b_es = '$P(A \cup B) = 1$',
  option_c_es = '$P(A \cap B) = 0$',
  option_d_es = '$P(A) = P(B)$',
  feedback_es = 'Incompatibles significa que no pueden darse a la vez. Su intersección es el conjunto vacío y, por tanto, la probabilidad de que ocurran simultáneamente es cero.'
WHERE statement = 'Segons l''axiomàtica bàsica, si dos successos $A$ i $B$ són incompatibles (mútuament excloents), es compleix que:' AND topic = 'Probabilitat';

UPDATE questions SET
  statement_es = 'Dos sucesos $A$ y $B$ se llaman INDEPENDIENTES si se cumple la igualdad:',
  option_a_es = '$P(A \cap B) = 0$',
  option_b_es = '$P(A \cap B) = P(A) \cdot P(B)$',
  option_c_es = '$P(A \cup B) = P(A) + P(B)$',
  option_d_es = '$P(A|B) = P(B|A)$',
  feedback_es = 'Esta es la regla fundamental para demostrar la independencia en un problema de la UIB. Si conocer $B$ no altera la probabilidad de $A$, entonces $P(A \cap B)$ es simplemente el producto de las dos probabilidades.'
WHERE statement = 'Dos successos $A$ i $B$ s''anomenen INDEPENDENTS si es compleix la igualtat:' AND topic = 'Probabilitat';

UPDATE questions SET
  statement_es = 'La fórmula de la probabilidad condicionada del suceso $A$ sabiendo que ha ocurrido $B$ es $P(A|B) =$',
  option_a_es = '$\frac{P(A \cap B)}{P(A)}$',
  option_b_es = '$P(A) \cdot P(B)$',
  option_c_es = '$\frac{P(A \cap B)}{P(B)}$',
  option_d_es = '$\frac{P(A)}{P(B)}$',
  feedback_es = 'Limitamos nuestro espacio muestral al suceso que YA SABEMOS que ha pasado ($B$). Por eso $P(B)$ va en el denominador. En el numerador ponemos la parte común donde ocurren ambos ($A \cap B$).'
WHERE statement = 'La fórmula de la probabilitat condicionada de l''esdeveniment $A$ sabent que ha ocorregut $B$ és $P(A|B) =$' AND topic = 'Probabilitat';

UPDATE questions SET
  statement_es = '¿Qué predicen las Leyes de De Morgan sobre la probabilidad del contrario de la unión: $P(\overline{A \cup B})$?',
  option_a_es = 'Que es igual a $P(\overline{A}) \cdot P(\overline{B})$.',
  option_b_es = 'Que es igual a $P(\overline{A} \cap \overline{B})$.',
  option_c_es = 'Que es igual a $P(\overline{A} \cup \overline{B})$.',
  option_d_es = 'Que es igual a $1$.',
  feedback_es = 'El complementario de la unión es la intersección de los complementarios: "No ocurre ni $A$ ni $B$" equivale a decir "No ocurre $A$ Y, al mismo tiempo, no ocurre $B$".'
WHERE statement = 'Què prediuen les Lleis de De Morgan sobre la probabilitat del contrari de la unió: $P(\overline{A \cup B})$?' AND topic = 'Probabilitat';

UPDATE questions SET
  statement_es = 'Una urna tiene bolas blancas y negras. Se sacan dos bolas de la urna *sin reposición*. La probabilidad de la segunda extracción depende del resultado de la primera. ¿Cómo se puede modelar eficazmente?',
  option_a_es = 'Es un experimento con sucesos independientes.',
  option_b_es = 'Hay que utilizar la distribución Normal.',
  option_c_es = 'Es recomendable utilizar un Diagrama de Árbol y probabilidad condicionada.',
  option_d_es = 'Utilizando exclusivamente las leyes de De Morgan.',
  feedback_es = 'Cuando hay experimentos compuestos (paso a paso) donde el espacio muestral va cambiando por falta de reposición, el diagrama de árbol refleja claramente cómo cambian las probabilidades (las ramas son los condicionantes).'
WHERE statement = 'Una urna té boles blanques i negres. Es treuen dues boles de l''urna *sense reposició*. La probabilitat de la segona extracció depèn del resultat de la primera. Com es pot modelar eficaçment?' AND topic = 'Probabilitat';

UPDATE questions SET
  statement_es = 'La expresión $P(A \cup B) = P(A) + P(B) - P(A \cap B)$ recibe el nombre de:',
  option_a_es = 'Teorema de Bayes.',
  option_b_es = 'Regla de Adición para cualquier par de sucesos.',
  option_c_es = 'Regla del Suceso Contrario.',
  option_d_es = 'Probabilidad Total.',
  feedback_es = 'Es fundamental restar la intersección porque, si sumamos $P(A)$ y $P(B)$, estamos contando los casos donde ocurren ambos sucesos de forma duplicada.'
WHERE statement = 'L''expressió $P(A \cup B) = P(A) + P(B) - P(A \cap B)$ rep el nom de:' AND topic = 'Probabilitat';

UPDATE questions SET
  statement_es = '¿Qué teorema utilizamos frecuentemente en los problemas de diagramas de árbol para recorrer las ramas "hacia atrás" y descubrir el origen de un resultado que ya se ha producido (ej: sabemos que una pieza es defectuosa, ¿cuál es la probabilidad de que provenga de la Máquina A)?',
  option_a_es = 'Teorema del Lógico de Boole.',
  option_b_es = 'Teorema de la Probabilidad Total.',
  option_c_es = 'Teorema de Bayes.',
  option_d_es = 'Teorema de Rouché-Frobenius.',
  feedback_es = 'El Teorema de Bayes calcula la probabilidad "a posteriori". Permite intercambiar el condicionante ($P(A_i|B)$ cuando conocemos $P(B|A_i)$ y $P(A_i)$). El denominador siempre es la probabilidad total de $B$.'
WHERE statement = 'Quin teorema utilitzem freqüentment en els problemes de diagrames d''arbre per recórrer les rames "cap enrere" i descobrir l''origen d''un resultat que ja s''ha produït (ex: sabem que una peça és defectuosa, quina és la probabilitat que provingui de la Màquina A)?' AND topic = 'Probabilitat';

UPDATE questions SET
  statement_es = '¿Cuánto suma siempre la probabilidad de un suceso y la de su suceso contrario: $P(A) + P(\overline{A})$?',
  option_a_es = 'Cero.',
  option_b_es = 'Depende del problema.',
  option_c_es = 'Entre 0 y 1.',
  option_d_es = 'Exactamente 1.',
  feedback_es = 'El espacio muestral entero (todo lo que puede ocurrir) tiene probabilidad $1$ (o $100\%$). Un suceso o bien ocurre, o bien no ocurre; por tanto forman un sistema completo de sucesos.'
WHERE statement = 'Quant suma sempre la probabilitat d''un succés i la del seu succés contrari: $P(A) + P(\overline{A})$?' AND topic = 'Probabilitat';

UPDATE questions SET
  statement_es = 'Tenemos el suceso "Aprobar Matemáticas" y el suceso "Ser de otra Galaxia". Si estos dos sucesos son totalmente independientes, ¿cuánto vale $P(\text{Aprobar} | \text{Galaxia})$?',
  option_a_es = 'Cero.',
  option_b_es = '$P(\text{Galaxia})$.',
  option_c_es = '$P(\text{Aprobar})$.',
  option_d_es = 'Un valor negativo.',
  feedback_es = 'Si dos sucesos son independientes, saber que ha ocurrido uno no aporta absolutamente ninguna información nueva sobre el otro. Por tanto, la probabilidad condicionada se reduce a la probabilidad original: $P(A|B) = P(A)$.'
WHERE statement = 'Tenim l''esdeveniment "Aprovar Matemàtiques" i l''esdeveniment "Ser d''una altra Galàxia". Si aquests dos esdeveniments són totalment independents, quant val $P(\text{Aprovar} | \text{Galàxia})$?' AND topic = 'Probabilitat';

UPDATE questions SET
  statement_es = 'Para calcular la probabilidad de una diferencia de sucesos (que ocurra $A$ pero NO ocurra $B$), ¿qué expresión se utiliza?',
  option_a_es = '$P(A - B) = P(A) - P(B)$',
  option_b_es = '$P(A \cap \overline{B}) = P(A) - P(A \cap B)$',
  option_c_es = '$P(A \cup B) = P(A) / P(B)$',
  option_d_es = '$P(A - B) = P(\overline{A}) \cdot P(B)$',
  feedback_es = 'A la probabilidad total de que ocurra $A$, solo hay que quitarle la "porción" donde $A$ y $B$ se solapan (la intersección), así te quedará solo la parte donde $A$ ocurre exclusivamente sin interferencia de $B$.'
WHERE statement = 'Per calcular la probabilitat d''una diferència de successos (que passi $A$ però NO passi $B$), quina expressió s''utilitza?' AND topic = 'Probabilitat';

UPDATE questions SET
  statement_es = 'Si A y B son dos sucesos INCOMPATIBLES (que no pueden ocurrir a la vez), ¿cuánto vale la probabilidad de su unión $P(A \cup B)$?',
  option_a_es = '$P(A) \cdot P(B)$',
  option_b_es = '$P(A) + P(B) - P(A \cap B)$',
  option_c_es = '$P(A) + P(B)$',
  option_d_es = 'Cero.',
  feedback_es = 'Como son incompatibles, su intersección es vacía ($P(A \cap B) = 0$). Por tanto, la fórmula general de la unión se simplifica a la suma directa de las probabilidades.'
WHERE statement = 'Si A i B són dos successos INCOMPATIBLES (que no poden ocórrer alhora), quant val la probabilitat de la seva unió $P(A \cup B)$?' AND topic = 'Probabilitat';

UPDATE questions SET
  statement_es = 'La probabilidad de que un cliente compre un producto A es 0.4. La probabilidad de que compre el producto B es 0.3. Si sabemos que la compra de B es INDEPENDIENTE de la compra de A, ¿cuál es la probabilidad de que compre ambos productos?',
  option_a_es = '0.7',
  option_b_es = '0.12',
  option_c_es = '0.1',
  option_d_es = 'No se puede calcular.',
  feedback_es = 'Si dos sucesos son independientes, la probabilidad de su intersección es el producto de sus probabilidades: $P(A \cap B) = P(A) \cdot P(B) = 0.4 \cdot 0.3 = 0.12$.'
WHERE statement = 'La probabilitat que un client compri un producte A és 0.4. La probabilitat que compri el producte B és 0.3. Si sabem que la compra de B és INDEPENDENT de la compra d''A, quina és la probabilitat que compri tots dos productes?' AND topic = 'Probabilitat';

UPDATE questions SET
  statement_es = 'En un diagrama de árbol, la suma de las probabilidades de las ramas que salen de un mismo nudo debe ser siempre:',
  option_a_es = 'Menor que 1.',
  option_b_es = 'Exactamente 1.',
  option_c_es = 'Depende del número de ramas.',
  option_d_es = '0.5',
  feedback_es = 'Las ramas que salen de un nudo representan todas las opciones posibles (un sistema completo de sucesos). Por tanto, la suma de sus probabilidades debe ser siempre el 100% (es decir, 1).'
WHERE statement = 'En un diagrama d''arbre, la suma de les probabilitats de les branques que surten d''un mateix nus ha de ser sempre:' AND topic = 'Probabilitat';

UPDATE questions SET
  statement_es = 'El Teorema de Bayes se utiliza principalmente para calcular:',
  option_a_es = 'La probabilidad total de un suceso al final de un experimento.',
  option_b_es = 'La unión de tres o más sucesos.',
  option_c_es = 'Probabilidades "a posteriori" (sabiendo el resultado final, cuál era la probabilidad del camino de origen).',
  option_d_es = 'La esperanza matemática de un juego.',
  feedback_es = 'Bayes se utiliza cuando ya conocemos el resultado (ej: "sabemos que la pieza es defectuosa") y queremos "volver atrás" en el árbol para saber qué máquina la ha producido: $P(A|B) = P(A \cap B) / P(B)$.'
WHERE statement = 'El Teorema de Bayes s''utilitza principalment per a calcular:' AND topic = 'Probabilitat';

UPDATE questions SET
  statement_es = 'De una baraja de cartas se extraen dos cartas CONSECUTIVAMENTE Y SIN REPOSICIÓN. ¿Qué podemos afirmar de los sucesos?',
  option_a_es = 'Son sucesos independientes.',
  option_b_es = 'Son sucesos dependientes.',
  option_c_es = 'Son sucesos incompatibles.',
  option_d_es = 'La probabilidad de la segunda extracción no cambia.',
  feedback_es = 'Al no devolver la primera carta a la baraja, el espacio muestral cambia (hay una carta menos). Por tanto, el resultado de la primera extracción condiciona directamente la probabilidad de la segunda. Son dependientes.'
WHERE statement = 'D''una baralla de cartes s''extreuen dues cartes CONSECUTIVAMENT I SENSE REPOSICIÓ. Què podem afirmar dels successos?' AND topic = 'Probabilitat';

UPDATE questions SET
  statement_es = 'Las Leyes de De Morgan afirman que la probabilidad del contrario de la unión $P(\overline{A \cup B})$ es igual a:',
  option_a_es = '$P(\overline{A}) \cup P(\overline{B})$',
  option_b_es = '$1 - P(A \cap B)$',
  option_c_es = '$P(\overline{A} \cap \overline{B})$',
  option_d_es = '$P(\overline{A}) + P(\overline{B})$',
  feedback_es = 'El complementario de la unión es la intersección de los complementarios. "No ocurre ni A ni B" es lo mismo que "No ocurre A, y a la vez, no ocurre B".'
WHERE statement = 'Les Lleis de De Morgan afirmen que la probabilitat del contrari de la unió $P(\overline{A \cup B})$ és igual a:' AND topic = 'Probabilitat';

UPDATE questions SET
  statement_es = 'Si $P(A) = 0.6$, ¿cuánto vale la probabilidad de su suceso contrario o complementario $P(\overline{A})$?',
  option_a_es = '0.6',
  option_b_es = '0.4',
  option_c_es = '-0.6',
  option_d_es = '0',
  feedback_es = 'La probabilidad de un suceso y la de su contrario suman siempre 1. Entonces, $P(\overline{A}) = 1 - P(A) = 1 - 0.6 = 0.4$.'
WHERE statement = 'Si $P(A) = 0.6$, quant val la probabilitat del seu succés contrari o complementari $P(\overline{A})$?' AND topic = 'Probabilitat';

UPDATE questions SET
  statement_es = 'En la fórmula de la probabilidad condicionada $P(A|B) = \frac{P(A \cap B)}{P(B)}$, el denominador $P(B)$ representa:',
  option_a_es = 'El nuevo espacio muestral reducido al suceso que sabemos que ya ha ocurrido.',
  option_b_es = 'La probabilidad de que ocurran A y B a la vez.',
  option_c_es = 'El error del experimento.',
  option_d_es = 'El suceso menos probable.',
  feedback_es = 'Cuando condicionamos a B, estamos descartando todos los casos donde B no ocurre. Nuestro "nuevo total" de opciones (el denominador) pasa a ser exclusivamente la probabilidad de B.'
WHERE statement = 'A la fórmula de la probabilitat condicionada $P(A|B) = \frac{P(A \cap B)}{P(B)}$, el denominador $P(B)$ representa:' AND topic = 'Probabilitat';

UPDATE questions SET
  statement_es = 'Para calcular la probabilidad de que ocurra el suceso A PERO NO ocurra el suceso B ($A - B$), utilizamos la fórmula:',
  option_a_es = '$P(A) - P(B)$',
  option_b_es = '$P(A) / P(B)$',
  option_c_es = '$P(A) - P(A \cap B)$',
  option_d_es = '$P(A) \cdot P(\overline{B})$',
  feedback_es = 'A la probabilidad total del círculo A hay que restarle el "trozo" que comparte con B (la intersección), para quedarnos solo con la parte exclusiva de A.'
WHERE statement = 'Per calcular la probabilitat que passi el succés A PERÒ NO passi el succés B ($A - B$), utilitzem la fórmula:' AND topic = 'Probabilitat';

UPDATE questions SET
  statement_es = 'Si en un problema nos dicen: "el 20% de los trabajadores son directivos, y de estos, el 40% son mujeres", ¿qué operación haremos para hallar la probabilidad de ser "Directivo Y Mujer"?',
  option_a_es = 'Sumar $0.20 + 0.40$',
  option_b_es = 'Multiplicar $0.20 \cdot 0.40$',
  option_c_es = 'Dividir $0.40 / 0.20$',
  option_d_es = 'Aplicar la Ley de Laplace.',
  feedback_es = 'Este es el típico camino de un diagrama de árbol. Estamos calculando la intersección de sucesos dependientes: $P(\text{Directivo} \cap \text{Mujer}) = P(\text{Directivo}) \cdot P(\text{Mujer}|\text{Directivo})$.'
WHERE statement = 'Si en un problema ens diuen: "el 20% dels treballadors són directius, i d''aquests, el 40% són dones", quina operació farem per trobar la probabilitat de ser "Directiu I Dona"?' AND topic = 'Probabilitat';

UPDATE questions SET
  statement_es = 'En una Distribución Normal Estándar $N(0, 1)$, ¿qué representa la tabla de probabilidades que nos dan en el examen?',
  option_a_es = 'La probabilidad de que $Z$ sea exactamente igual a un valor $z$.',
  option_b_es = 'La probabilidad de que $Z$ sea mayor o igual que $z$ ($P(Z \ge z)$).',
  option_c_es = 'El área bajo la campana de Gauss a la izquierda del valor $z$ ($P(Z \le z)$).',
  option_d_es = 'La media de la muestra.',
  feedback_es = 'La tabla de la normal acumula la probabilidad desde $-\infty$ hasta un valor $z$ positivo. Da siempre el área que queda a la izquierda de la curva.'
WHERE statement = 'En una Distribució Normal Estàndard $N(0, 1)$, què representa la taula de probabilitats que ens donen a l''examen?' AND topic = 'Estadística Inferencial (Distribució Normal i Intervals)';

UPDATE questions SET
  statement_es = 'Tenemos una variable aleatoria $X$ que sigue una distribución Normal $N(\mu=50, \sigma=10)$. ¿Cómo la "tipificamos" para poder usar la tabla de la Normal $Z(0,1)$?',
  option_a_es = '$Z = (X - 10) / 50$',
  option_b_es = '$Z = (X - 50) / 10$',
  option_c_es = '$Z = X \cdot 50 / 10$',
  option_d_es = 'No hace falta tipificar, la tabla sirve para cualquier Normal.',
  feedback_es = 'La fórmula de tipificación es $Z = \frac{X - \mu}{\sigma}$. Se resta la media poblacional y se divide entre la desviación típica.'
WHERE statement = 'Tenim una variable aleatòria $X$ que segueix una distribució Normal $N(\mu=50, \sigma=10)$. Com la "tipifiquem" per poder usar la taula de la Normal $Z(0,1)$?' AND topic = 'Estadística Inferencial (Distribució Normal i Intervals)';

UPDATE questions SET
  statement_es = 'Si la media de las notas de una muestra de alumnos es 6,5, ¿dónde estará situado el centro del Intervalo de Confianza para la media de toda la población?',
  option_a_es = 'En 0.',
  option_b_es = 'Exactamente en 6,5.',
  option_c_es = 'Depende del nivel de confianza.',
  option_d_es = 'Depende del tamaño de la muestra.',
  feedback_es = 'El intervalo de confianza se construye siempre de forma simétrica sumando y restando el Error Máximo alrededor de la media de la muestra ($\bar{x}$). El centro siempre es $\bar{x}$.'
WHERE statement = 'Si la mitjana de les notes d''una mostra d''alumnes és 6,5, on estarà situat el centre de l''Interval de Confiança per a la mitjana de tota la població?' AND topic = 'Estadística Inferencial (Distribució Normal i Intervals)';

UPDATE questions SET
  statement_es = 'Si AUMENTAMOS el tamaño de la muestra ($n$) de un estudio estadístico manteniendo el mismo nivel de confianza, ¿qué le pasa a la amplitud del Intervalo de Confianza?',
  option_a_es = 'Aumenta (es más ancho).',
  option_b_es = 'Disminuye (es más estrecho y preciso).',
  option_c_es = 'Se mantiene igual.',
  option_d_es = 'El error máximo se duplica.',
  feedback_es = 'El Error Máximo es $E = z_{\alpha/2} \cdot \frac{\sigma}{\sqrt{n}}$. Como $n$ está en el denominador, si $n$ crece, el error disminuye, haciendo que el intervalo sea más estrecho y tengamos más precisión.'
WHERE statement = 'Si AUGMENTEM la mida de la mostra ($n$) d''un estudi estadístic mantenint el mateix nivell de confiança, què li passa a l''amplitud de l''Interval de Confiança?' AND topic = 'Estadística Inferencial (Distribució Normal i Intervals)';

UPDATE questions SET
  statement_es = 'Queremos un nivel de confianza del 95% ($1 - \alpha = 0.95$). ¿Qué valor de $z_{\alpha/2}$ buscaremos en la tabla para poner en la fórmula del error?',
  option_a_es = 'El valor de z que deja por debajo un área de 0.95.',
  option_b_es = 'El valor de z que deja por debajo un área de 0.975.',
  option_c_es = 'El valor de z que deja por debajo un área de 0.05.',
  option_d_es = '1.645',
  feedback_es = 'Si la confianza es 0.95, sobra un $\alpha = 0.05$. Como la curva tiene dos colas, dividimos $\alpha/2 = 0.025$. En la tabla hay que buscar el área $0.95 + 0.025 = 0.975$, que corresponde a $z = 1.96$.'
WHERE statement = 'Volem un nivell de confiança del 95% ($1 - \alpha = 0.95$). Quin valor de $z_{\alpha/2}$ buscarem a la taula per posar a la fórmula de l''error?' AND topic = 'Estadística Inferencial (Distribució Normal i Intervals)';

UPDATE questions SET
  statement_es = 'Si queremos hallar la probabilidad de que una variable Normal $Z$ sea MAYOR que 1.5 ($P(Z > 1.5)$), ¿cómo lo calculamos con la tabla?',
  option_a_es = 'Miramos directamente el valor 1.5 en la tabla.',
  option_b_es = 'Miramos el valor de -1.5 en la tabla.',
  option_c_es = 'Hacemos $1 - P(Z \le 1.5)$ (donde $P(Z \le 1.5)$ es el valor de la tabla).',
  option_d_es = 'Es directamente 0.',
  feedback_es = 'Como el área total bajo la campana es 1, y la tabla solo nos da probabilidades "menores que" (hacia la izquierda), para hallar el área de la derecha hay que restar el área izquierda a 1.'
WHERE statement = 'Si volem trobar la probabilitat que una variable Normal $Z$ sigui MAJOR que 1.5 ($P(Z > 1.5)$), com ho calculem amb la taula?' AND topic = 'Estadística Inferencial (Distribució Normal i Intervals)';

UPDATE questions SET
  statement_es = 'Para cualquier variable aleatoria continua (como la Distribución Normal), ¿cuál es la probabilidad de que tome un valor EXACTO (ej: $P(X = 25)$)?',
  option_a_es = '0.5',
  option_b_es = '1',
  option_c_es = 'Depende de la media.',
  option_d_es = 'Cero.',
  feedback_es = 'En una distribución continua, hay infinitos valores posibles. El área bajo la curva para un solo punto (sin anchura) es nula. Por eso $P(X = a) = 0$ y siempre calculamos probabilidades en intervalos ($P(X \le a)$).'
WHERE statement = 'Per a qualsevol variable aleatòria contínua (com la Distribució Normal), quina és la probabilitat que prengui un valor EXACTE (ex: $P(X = 25)$)?' AND topic = 'Estadística Inferencial (Distribució Normal i Intervals)';

UPDATE questions SET
  statement_es = 'La fórmula para calcular el tamaño MÍNIMO de la muestra ($n$) necesaria para no superar un error $E$ determinado es:',
  option_a_es = '$n = (z_{\alpha/2} \cdot \sigma) / E$',
  option_b_es = '$n = \left(\frac{z_{\alpha/2} \cdot \sigma}{E}\right)^2$',
  option_c_es = '$n = z_{\alpha/2} \cdot E / \sigma$',
  option_d_es = '$n = E^2 / \sigma$',
  feedback_es = 'Esta fórmula sale de aislar la $n$ de la fórmula del Error Máximo $E = z_{\alpha/2} \cdot \frac{\sigma}{\sqrt{n}}$. Hay que recordar que el resultado siempre debe redondearse hacia el entero superior.'
WHERE statement = 'La fórmula per calcular la mida MÍNIMA de la mostra ($n$) necessària per no superar un error $E$ determinat és:' AND topic = 'Estadística Inferencial (Distribució Normal i Intervals)';

UPDATE questions SET
  statement_es = 'En un intervalo de confianza, la diferencia entre el límite superior del intervalo y el límite inferior equivale a:',
  option_a_es = 'El error máximo admitido ($E$).',
  option_b_es = 'La media de la muestra ($\bar{x}$).',
  option_c_es = 'El doble del error máximo ($2E$).',
  option_d_es = 'La desviación típica poblacional ($\sigma$).',
  feedback_es = 'Como el intervalo es $(\bar{x} - E, \bar{x} + E)$, la anchura total del intervalo (límite superior menos límite inferior) mide exactamente el doble del error ($2E$).'
WHERE statement = 'En un interval de confiança, la diferència entre el límit superior de l''interval i el límit inferior equival a:' AND topic = 'Estadística Inferencial (Distribució Normal i Intervals)';

UPDATE questions SET
  statement_es = '¿Cómo se resuelve la probabilidad de un número negativo en la tabla Normal $P(Z \le -a)$ donde $a > 0$?',
  option_a_es = 'La tabla ya incluye números negativos.',
  option_b_es = 'Es igual a $P(Z \ge a)$, que se calcula haciendo $1 - P(Z \le a)$.',
  option_c_es = 'Es cero.',
  option_d_es = 'Se multiplica el valor de la tabla por -1.',
  feedback_es = 'Por la simetría geométrica de la Campana de Gauss respecto al eje Y, el área a la izquierda de un valor negativo (la cola izquierda) es exactamente igual al área a la derecha de ese mismo valor en positivo (la cola derecha).'
WHERE statement = 'Com es resol la probabilitat d''un nombre negatiu a la taula Normal $P(Z \le -a)$ on $a > 0$?' AND topic = 'Estadística Inferencial (Distribució Normal i Intervals)';

UPDATE questions SET
  statement_es = 'Para poder multiplicar dos matrices, $A \cdot B$, ¿qué condición geométrica de dimensiones se debe cumplir estrictamente?',
  option_a_es = 'Deben tener las mismas dimensiones exactas.',
  option_b_es = 'El número de columnas de A debe ser igual al número de filas de B.',
  option_c_es = 'Ambas deben ser matrices cuadradas.',
  option_d_es = 'El número de filas de A debe ser igual al número de columnas de B.',
  feedback_es = 'Esta es la regla fundamental del producto de matrices. Si A es de orden $(m \times n)$ y B es de orden $(p \times q)$, el producto solo es posible si $n = p$. La matriz resultante tendrá dimensión $(m \times q)$.'
WHERE statement = 'Per poder multiplicar dues matrius, $A \cdot B$, quina condició geomètrica de dimensions s''ha de complir estrictament?' AND topic = 'Àlgebra (Matrius i Sistemes d''Equacions)';

UPDATE questions SET
  statement_es = 'Tenemos un sistema de ecuaciones lineales que representa las ventas de tres tipos de productos en una empresa. Si resolvemos el sistema y encontramos que es un "Sistema Incompatible", ¿qué significa económicamente?',
  option_a_es = 'Que hay infinitas soluciones de precios para los productos.',
  option_b_es = 'Que hay un error en los datos y los requisitos se contradicen (no hay ninguna solución posible).',
  option_c_es = 'Que todos los productos tienen precio cero.',
  option_d_es = 'Que hay que usar la matriz inversa.',
  feedback_es = 'Un sistema incompatible (SI) significa matemáticamente que las ecuaciones no se pueden satisfacer simultáneamente. En un problema real, significa que los datos proporcionados (las ventas y los ingresos) son incongruentes.'
WHERE statement = 'Tenim un sistema d''equacions lineals que representa les vendes de tres tipus de productes a una empresa. Si resolem el sistema i trobem que és un "Sistema Incompatible", què significa econòmicament?' AND topic = 'Àlgebra (Matrius i Sistemes d''Equacions)';

UPDATE questions SET
  statement_es = 'Queremos resolver la ecuación matricial $A \cdot X + B = C$, sabiendo que $A$ es invertible. ¿Cuál es el paso correcto para aislar $X$?',
  option_a_es = '$X = (C - B) / A$',
  option_b_es = '$X = A^{-1} \cdot (C - B)$',
  option_c_es = '$X = (C - B) \cdot A^{-1}$',
  option_d_es = '$X = A \cdot (C - B)^{-1}$',
  feedback_es = 'Primero pasamos B restando: $A \cdot X = C - B$. Para quitar la A (que multiplica por la izquierda), debemos multiplicar por $A^{-1}$ OBLIGATORIAMENTE por la izquierda en el otro lado de la igualdad.'
WHERE statement = 'Volem resoldre l''equació matricial $A \cdot X + B = C$, sabent que $A$ és invertible. Quina és la passa correcta per aïllar $X$?' AND topic = 'Àlgebra (Matrius i Sistemes d''Equacions)';

UPDATE questions SET
  statement_es = 'Según el teorema de Rouché-Frobenius, un sistema tiene infinitas soluciones (Sistema Compatible Indeterminado) cuando:',
  option_a_es = '$\text{Rango}(A) \neq \text{Rango}(A^*)$',
  option_b_es = '$\text{Rango}(A) = \text{Rango}(A^*) = \text{número de incógnitas}$',
  option_c_es = 'El determinante de A es distinto de cero.',
  option_d_es = '$\text{Rango}(A) = \text{Rango}(A^*) < \text{número de incógnitas}$',
  feedback_es = 'Como el rango es menor que el número de incógnitas, significa que nos sobran variables que actúan como "parámetros libres", generando infinitas combinaciones que solucionan el sistema.'
WHERE statement = 'Segons el teorema de Rouché-Frobenius, un sistema té infinites solucions (Sistema Compatible Indeterminat) quan:' AND topic = 'Àlgebra (Matrius i Sistemes d''Equacions)';

UPDATE questions SET
  statement_es = 'Una matriz cuadrada NO tiene matriz inversa (es singular) cuando:',
  option_a_es = 'Todos los elementos son positivos.',
  option_b_es = 'Su determinante es igual a cero ($|A| = 0$).',
  option_c_es = 'Su determinante es distinto de cero ($|A| \neq 0$).',
  option_d_es = 'Es una matriz identidad.',
  feedback_es = 'En la fórmula de la matriz inversa ($A^{-1} = \frac{1}{|A|} \text{Adj}(A)^T$), dividimos entre el determinante. Si el determinante es cero, la operación matemática no existe.'
WHERE statement = 'Una matriu quadrada NO té matriu inversa (és singular) quan:' AND topic = 'Àlgebra (Matrius i Sistemes d''Equacions)';

UPDATE questions SET
  statement_es = 'La matriz Identidad $I$ cumple una propiedad fundamental en la multiplicación de matrices. ¿Cuál?',
  option_a_es = 'Que convierte cualquier matriz en la matriz nula.',
  option_b_es = '$A \cdot I = I \cdot A = A$ para cualquier matriz A compatible.',
  option_c_es = '$A \cdot I = A^{-1}$',
  option_d_es = 'No se puede multiplicar por otras matrices.',
  feedback_es = 'La matriz identidad actúa exactamente como el número "1" en el álgebra de números reales. Es el elemento neutro de la multiplicación.'
WHERE statement = 'La matriu Identitat $I$ compleix una propietat fonamental en la multiplicació de matrius. Quina?' AND topic = 'Àlgebra (Matrius i Sistemes d''Equacions)';

UPDATE questions SET
  statement_es = 'Si transponemos una matriz (cambiamos filas por columnas), ¿qué pasa con su determinante?',
  option_a_es = 'Cambia de signo.',
  option_b_es = 'Se vuelve cero.',
  option_c_es = 'El determinante no cambia ($|A| = |A^T|$).',
  option_d_es = 'Se invierte ($1 / |A|$).',
  feedback_es = 'Esta es una propiedad fundamental. Un determinante se puede desarrollar por filas o por columnas obteniendo exactamente el mismo valor. Por tanto, la matriz y su transpuesta tienen el mismo determinante.'
WHERE statement = 'Si transpusem una matriu (canviem files per columnes), què passa amb el seu determinant?' AND topic = 'Àlgebra (Matrius i Sistemes d''Equacions)';

UPDATE questions SET
  statement_es = 'Tenemos una empresa que fabrica dos tipos de muebles con tres tipos de madera. Si queremos construir una matriz para resolver los precios de los materiales, ¿qué método es el más directo si el sistema resulta ser cuadrado y compatible determinado?',
  option_a_es = 'Derivación.',
  option_b_es = 'Regla de Cramer.',
  option_c_es = 'Teorema de Bayes.',
  option_d_es = 'Ley de Laplace.',
  feedback_es = 'La Regla de Cramer ($x = |A_x| / |A|$) es el método más eficaz y pautado para resolver sistemas cuadrados con una única solución (SCD) de forma directa mediante determinantes.'
WHERE statement = 'Tenim una empresa que fabrica dos tipus de mobles amb tres tipus de fusta. Si volem construir una matriu per resoldre els preus dels materials, quin mètode és el més directe si el sistema resulta ser quadrat i compatible determinat?' AND topic = 'Àlgebra (Matrius i Sistemes d''Equacions)';

UPDATE questions SET
  statement_es = 'En la matriz ampliada ($A^*$) de un sistema de ecuaciones de economía, ¿qué colocamos en la última columna?',
  option_a_es = 'Los coeficientes de la x.',
  option_b_es = 'Los términos independientes (las cantidades totales como presupuestos o totales de ventas).',
  option_c_es = 'Ceros siempre.',
  option_d_es = 'La matriz inversa.',
  feedback_es = 'La matriz ampliada se escribe añadiendo una columna extra a la matriz de coeficientes. Esa columna contiene las constantes que están a la derecha del signo "=" en las ecuaciones lineales.'
WHERE statement = 'A la matriu ampliada ($A^*$) d''un sistema d''equacions d''economia, què col·loquem a la darrera columna?' AND topic = 'Àlgebra (Matrius i Sistemes d''Equacions)';

UPDATE questions SET
  statement_es = 'Si se intercambian dos filas en una matriz $3 \times 3$, su determinante:',
  option_a_es = 'Se mantiene igual.',
  option_b_es = 'Se hace cero.',
  option_c_es = 'Cambia de signo.',
  option_d_es = 'Se multiplica por 2.',
  feedback_es = 'Por las propiedades de los determinantes, cada vez que se intercambian dos líneas paralelas (sean filas o columnas), el valor del determinante se multiplica por -1.'
WHERE statement = 'Si s''intercanvien dues files en una matriu $3 \times 3$, el seu determinant:' AND topic = 'Àlgebra (Matrius i Sistemes d''Equacions)';

UPDATE questions SET
  statement_es = 'En economía, si tenemos una función que modela los Ingresos $I(x)$ y otra que modela los Costes $C(x)$ para producir $x$ unidades, ¿cómo obtenemos la función de Beneficios $B(x)$?',
  option_a_es = '$B(x) = I(x) + C(x)$',
  option_b_es = '$B(x) = I(x) \cdot C(x)$',
  option_c_es = '$B(x) = I(x) / C(x)$',
  option_d_es = '$B(x) = I(x) - C(x)$',
  feedback_es = 'El beneficio económico es la diferencia entre todo el dinero que entra en la caja (Ingresos) menos todo el dinero que cuesta fabricar el producto (Costes).'
WHERE statement = 'En economia, si tenim una funció que modelitza els Ingressos $I(x)$ i una altra que modelitza els Costos $C(x)$ per produir $x$ unitats, com obtenim la funció de Beneficis $B(x)$?' AND topic = 'Anàlisi (Funcions, Límits i Derivades)';

UPDATE questions SET
  statement_es = 'Queremos MAXIMIZAR los beneficios de una empresa. Desde el punto de vista matemático, ¿cuál es el primer paso que debemos dar con la función de beneficios $B(x)$?',
  option_a_es = 'Igualarla a cero ($B(x) = 0$).',
  option_b_es = 'Calcular su derivada primera e igualarla a cero ($B''(x) = 0$).',
  option_c_es = 'Calcular su integral.',
  option_d_es = 'Buscar una asíntota horizontal.',
  feedback_es = 'La optimización de funciones pasa siempre por encontrar los puntos críticos (donde la pendiente de la recta tangente es cero). Esto se consigue resolviendo $B''(x) = 0$.'
WHERE statement = 'Volem MAXIMITZAR els beneficis d''una empresa. Des del punt de vista matemàtic, quin és el primer pas que hem de fer amb la funció de beneficis $B(x)$?' AND topic = 'Anàlisi (Funcions, Límits i Derivades)';

UPDATE questions SET
  statement_es = 'Una vez hemos encontrado el número de unidades $x$ que hace que $B''(x) = 0$, ¿cómo aseguramos matemáticamente que ese punto es un MÁXIMO de beneficios y no un mínimo?',
  option_a_es = 'Comprobando que $B''''(x) < 0$ (Segunda derivada negativa).',
  option_b_es = 'Comprobando que $B''''(x) > 0$ (Segunda derivada positiva).',
  option_c_es = 'Sustituyendo en la función original y viendo si da positivo.',
  option_d_es = 'Haciendo un límite hacia el infinito.',
  feedback_es = 'Si la segunda derivada es negativa en el punto crítico, la función tiene forma convexa o de "M" (curvada hacia abajo), lo que confirma que nos encontramos en la cima de la montaña (un máximo).'
WHERE statement = 'Un cop hem trobat el nombre d''unitats $x$ que fa que $B''(x) = 0$, com assegurem matemàticament que aquest punt és un MÀXIM de beneficis i no un mínim?' AND topic = 'Anàlisi (Funcions, Límits i Derivades)';

UPDATE questions SET
  statement_es = 'Una función definida a trozos representa el coste de la luz según la hora. Para comprobar si la función no tiene saltos bruscos de precio (es CONTINUA) en el momento del cambio de tramo (ej: $x=12$), ¿qué se debe cumplir?',
  option_a_es = 'Que la derivada en $x=12$ valga 0.',
  option_b_es = 'Que el límite de la función por la izquierda de 12 sea igual al límite por la derecha de 12 e igual a $f(12)$.',
  option_c_es = 'Que el límite cuando x tiende a infinito sea 12.',
  option_d_es = 'Que la función sea siempre positiva.',
  feedback_es = 'Esta es la condición ineludible de continuidad en un punto: $\lim_{x \to 12^-} f(x) = \lim_{x \to 12^+} f(x) = f(12)$. Los dos tramos deben "conectarse" exactamente a la misma altura.'
WHERE statement = 'Una funció definida a trossos representa el cost de la llum segons l''hora. Per comprovar si la funció no té salts bruscs de preu (és CONTÍNUA) en el moment de canvi de tram (ex: $x=12$), què s''ha de complir?' AND topic = 'Anàlisi (Funcions, Límits i Derivades)';

UPDATE questions SET
  statement_es = 'El concepto económico de "Coste Marginal" se traduce matemáticamente como:',
  option_a_es = 'La asíntota vertical de la función de coste.',
  option_b_es = 'La raíz cuadrada de la función de coste.',
  option_c_es = 'La derivada de la función de coste total $C''(x)$.',
  option_d_es = 'La función de coste dividida entre $x$.',
  feedback_es = 'En economía, cualquier magnitud "marginal" equivale a la derivada de la magnitud total respecto a la cantidad producida $x$. Indica el incremento de coste por producir una unidad adicional.'
WHERE statement = 'El concepte econòmic de "Cost Marginal" es tradueix matemàticament com:' AND topic = 'Anàlisi (Funcions, Límits i Derivades)';

UPDATE questions SET
  statement_es = 'Queremos predecir hacia dónde tiende la deuda de un país a largo plazo si aplicamos el modelo matemático $f(t) = \frac{3t + 5}{t + 2}$ donde $t$ son los años. ¿Qué estamos buscando?',
  option_a_es = 'Una asíntota vertical calculando $\lim_{t \to -2} f(t)$.',
  option_b_es = 'Una asíntota horizontal calculando $\lim_{t \to \infty} f(t)$.',
  option_c_es = 'El mínimo de la función haciendo $f''(t) = 0$.',
  option_d_es = 'Una asíntota oblicua.',
  feedback_es = 'El comportamiento a "largo plazo" significa cuando el tiempo se escapa hacia el infinito. Calcular el límite en el infinito de esta función racional nos dará 3, su asíntota horizontal.'
WHERE statement = 'Volem predir cap on tendeix el deute d''un país a llarg termini si apliquem el model matemàtic $f(t) = \frac{3t + 5}{t + 2}$ on $t$ són els anys. Què estem cercant?' AND topic = 'Anàlisi (Funcions, Límits i Derivades)';

UPDATE questions SET
  statement_es = 'El dominio de una función polinómica de grado 3 (tipo $f(x) = 2x^3 - 5x^2 + x - 1$) es:',
  option_a_es = 'Solo los números positivos.',
  option_b_es = 'Todos los números reales $\mathbb{R}$.',
  option_c_es = 'Todos los reales excepto donde se anula el denominador.',
  option_d_es = '$(-1, 1)$',
  feedback_es = 'Las funciones polinómicas, muy usadas en el ajuste de modelos económicos simples, no tienen denominadores ni raíces, por lo que nunca presentan discontinuidades y su dominio siempre es $\mathbb{R}$.'
WHERE statement = 'El domini d''una funció polinòmica de grau 3 (tipus $f(x) = 2x^3 - 5x^2 + x - 1$) és:' AND topic = 'Anàlisi (Funcions, Límits i Derivades)';

UPDATE questions SET
  statement_es = 'La derivada de la función constante $f(x) = 5000$ (que representa un coste fijo de alquiler que no depende del volumen de producción) vale:',
  option_a_es = '5000',
  option_b_es = '$5000x$',
  option_c_es = 'Cero.',
  option_d_es = '$1/5000$',
  feedback_es = 'La derivada mide la tasa de cambio. Como el coste fijo no cambia nunca, independientemente de las unidades que fabriquemos, su tasa de cambio es 0.'
WHERE statement = 'La derivada de la funció constant $f(x) = 5000$ (que representa un cost fix de lloguer que no depèn del volum de producció) val:' AND topic = 'Anàlisi (Funcions, Límits i Derivades)';

UPDATE questions SET
  statement_es = '¿Qué nos indica un punto de inflexión en la gráfica de evolución del paro de un país a lo largo de los meses?',
  option_a_es = 'El mes donde el paro es más alto (máximo).',
  option_b_es = 'El mes donde el paro empieza a decrecer si antes crecía.',
  option_c_es = 'El punto donde cambia la curvatura (quizá el paro sigue subiendo, pero empieza a hacerlo más lentamente).',
  option_d_es = 'El mes donde el paro es cero.',
  feedback_es = 'El punto de inflexión (donde $f''''(x) = 0$) marca el cambio de concavidad a convexidad (o al revés). En una crisis, significa que las cosas siguen empeorando (crece), pero el ritmo de empeoramiento se está frenando (pasa de crecer rápido a crecer lento).'
WHERE statement = 'Què ens indica un punt d''inflexió en la gràfica d''evolució de l''atur d''un país al llarg dels mesos?' AND topic = 'Anàlisi (Funcions, Límits i Derivades)';

UPDATE questions SET
  statement_es = 'Si la derivada primera de una función de beneficios $B''(x)$ es NEGATIVA en el intervalo $(100, 200)$, ¿qué significa?',
  option_a_es = 'Que la función de beneficios es decreciente en ese intervalo (fabricamos más pero ganamos menos).',
  option_b_es = 'Que estamos teniendo pérdidas (beneficio negativo).',
  option_c_es = 'Que la función es cóncava.',
  option_d_es = 'Que hemos encontrado un mínimo.',
  feedback_es = 'El signo de la derivada nos indica exclusivamente la dirección de la función. Derivada negativa = función decreciente. (Atención: ganar menos no significa tener pérdidas, solo que el beneficio va a la baja).'
WHERE statement = 'Si la derivada primera d''una funció de beneficis $B''(x)$ és NEGATIVA a l''interval $(100, 200)$, què vol dir?' AND topic = 'Anàlisi (Funcions, Límits i Derivades)';

UPDATE questions SET
  statement_es = 'Queremos hallar la función de Ingresos totales $I(x)$ a partir de la función de Ingresos Marginales $I''(x)$. ¿Qué operación matemática debemos realizar?',
  option_a_es = 'Calcular la asíntota oblicua.',
  option_b_es = 'Derivar $I''(x)$ una segunda vez.',
  option_c_es = 'Integrar la función marginal $\int I''(x) dx$.',
  option_d_es = 'Multiplicar por $x$.',
  feedback_es = 'El Teorema Fundamental del Cálculo nos dice que la integración es la operación inversa a la derivación. Para recuperar una función "total" a partir de una función "marginal", debemos integrar.'
WHERE statement = 'Volem trobar la funció d''Ingressos totals $I(x)$ a partir de la funció d''Ingressos Marginals $I''(x)$. Quina operació matemàtica hem de realitzar?' AND topic = 'Anàlisi (Integrals i Àrees)';

UPDATE questions SET
  statement_es = 'La Regla de Barrow sirve para calcular la integral definida de una función $f(x)$ entre $a$ y $b$. Su fórmula es:',
  option_a_es = '$\int_a^b f(x) dx = F(a) - F(b)$',
  option_b_es = '$\int_a^b f(x) dx = F(b) - F(a)$ donde $F(x)$ es la primitiva de $f(x)$.',
  option_c_es = '$\int_a^b f(x) dx = f''(b) - f''(a)$',
  option_d_es = 'Se obtiene derivando los extremos.',
  feedback_es = 'Una vez calculada la primitiva $F(x)$ (la función integrada), evaluamos esa función en el extremo superior del intervalo y le restamos el resultado de evaluarla en el extremo inferior.'
WHERE statement = 'La Regla de Barrow serveix per calcular la integral definida d''una funció $f(x)$ entre $a$ i $b$. La seva fórmula és:' AND topic = 'Anàlisi (Integrals i Àrees)';

UPDATE questions SET
  statement_es = 'Si la función de beneficios de una empresa $f(x)$ es siempre negativa entre el año $x=2$ y el año $x=5$, al calcular la integral definida $\int_2^5 f(x) dx$, ¿qué resultado obtendremos?',
  option_a_es = 'Un valor positivo que representa el área geométrica.',
  option_b_es = 'Cero.',
  option_c_es = 'Un valor negativo.',
  option_d_es = 'No se puede calcular la integral de una función negativa.',
  feedback_es = 'La integral definida (sin poner valores absolutos) devuelve el valor algebraico puro. Si la función está por debajo del eje X, el área contará en negativo, indicando una pérdida acumulada de beneficios.'
WHERE statement = 'Si la funció de beneficis d''una empresa $f(x)$ és sempre negativa entre l''any $x=2$ i l''any $x=5$, en calcular la integral definida $\int_2^5 f(x) dx$, quin resultat obtindrem?' AND topic = 'Anàlisi (Integrals i Àrees)';

UPDATE questions SET
  statement_es = 'Si queremos calcular EL ÁREA geométrica comprendida entre la función $f(x) = x^2 - 4$ y el eje OX ($y=0$), antes de integrar OBLIGATORIAMENTE debemos:',
  option_a_es = 'Encontrar dónde la segunda derivada vale 0.',
  option_b_es = 'Calcular los puntos de corte con el eje OX resolviendo $f(x) = 0$.',
  option_c_es = 'Hacer la inversa de la función.',
  option_d_es = 'Derivar la función para ver dónde crece.',
  feedback_es = 'Para calcular áreas de forma correcta, hay que ver en qué puntos la función cruza el eje de abscisas, ya que si una parte del área cae por debajo del eje y otra por encima, sin dividir el intervalo se anularían erróneamente.'
WHERE statement = 'Si volem calcular L''ÀREA geomètrica compresa entre la funció $f(x) = x^2 - 4$ i l''eix OX ($y=0$), abans d''integrar OBLIGATÒRIAMENT hem de:' AND topic = 'Anàlisi (Integrals i Àrees)';

UPDATE questions SET
  statement_es = '¿Cuánto vale la integral indefinida más sencilla de un polinomio simple: $\int x^3 dx$?',
  option_a_es = '$3x^2 + C$',
  option_b_es = '$\frac{x^4}{4} + C$',
  option_c_es = '$\frac{x^3}{3} + C$',
  option_d_es = '$x^4 + C$',
  feedback_es = 'La regla básica de integración de potencias es: sumar 1 al exponente y dividir entre el nuevo exponente resultante. Esto se aplica para cualquier potencia excepto para el exponente -1.'
WHERE statement = 'Quant val la integral indefinida més senzilla d''un polinomi simple: $\int x^3 dx$?' AND topic = 'Anàlisi (Integrals i Àrees)';

UPDATE questions SET
  statement_es = '¿Cuál es la razón matemática para incluir la letra $+ C$ (la constante de integración) al resolver una integral indefinida?',
  option_a_es = 'Porque todas las funciones incluyen letras.',
  option_b_es = 'Porque la derivada de cualquier constante es 0, así que hay infinitas funciones primitivas que difieren solo en una constante.',
  option_c_es = 'Para calcular la media del área.',
  option_d_es = 'Porque en MACS II se suele poner por formalismo, pero no significa nada.',
  feedback_es = 'Si derivas $F(x) = x^2 + 5$ da $2x$. Si derivas $F(x) = x^2 - 100$ también da $2x$. Por tanto, la antiderivada de $2x$ incluye todas esas infinitas posibilidades marcadas por el término genérico $+ C$.'
WHERE statement = 'Quina és la raó matemàtica per incloure la lletra $+ C$ (la constant d''integració) en resoldre una integral indefinida?' AND topic = 'Anàlisi (Integrals i Àrees)';

UPDATE questions SET
  statement_es = 'Queremos calcular el área comprendida entre las curvas de Costes $C(x)$ e Ingresos $I(x)$ entre $x=10$ y $x=50$. La expresión de la integral será:',
  option_a_es = '$\int_{10}^{50} (I(x) + C(x)) dx$',
  option_b_es = '$\int_{10}^{50} \frac{I(x)}{C(x)} dx$',
  option_c_es = '$\int_{10}^{50} |I(x) - C(x)| dx$',
  option_d_es = '$\int_{10}^{50} C''(x) dx$',
  feedback_es = 'Para calcular el área entre dos curvas, hay que hacer la integral de su resta (función superior menos inferior). Para asegurar un valor positivo de área sin tener que dibujarlas para ver cuál va por encima, se toma el valor absoluto de la diferencia.'
WHERE statement = 'Volem calcular l''àrea compresa entre les corbes de Costos $C(x)$ i Ingressos $I(x)$ entre $x=10$ i $x=50$. L''expressió de l''integral serà:' AND topic = 'Anàlisi (Integrals i Àrees)';

UPDATE questions SET
  statement_es = 'El área del recinto limitado por la función de densidad de una distribución de probabilidad (como la Normal) y el eje de abscisas siempre vale:',
  option_a_es = '$0.5$',
  option_b_es = 'Depende de la media.',
  option_c_es = 'Infinito.',
  option_d_es = 'Exactamente $1$.',
  feedback_es = 'En estadística, el área total bajo la curva de una función de densidad representa el 100% de las probabilidades del espacio muestral. En valor numérico, ese 100% equivale a un área matemática de 1.'
WHERE statement = 'L''àrea del recinte limitat per la funció de densitat d''una distribució de probabilitat (com la Normal) i l''eix d''abscisses sempre val:' AND topic = 'Anàlisi (Integrals i Àrees)';

UPDATE questions SET
  statement_es = '¿A qué función propia de MACS II da lugar la integral $\int \frac{1}{x} dx$?',
  option_a_es = '$x^0 + C$',
  option_b_es = '$e^x + C$',
  option_c_es = '$\ln|x| + C$',
  option_d_es = '$-\frac{1}{x^2} + C$',
  feedback_es = 'Como decíamos, es la única excepción de la regla de las potencias (ya que daría división entre 0). La antiderivada de $x^{-1}$ (o $1/x$) es la función logaritmo neperiano en valor absoluto.'
WHERE statement = 'A quina funció pròpia de MACS II dóna lloc la integral $\int \frac{1}{x} dx$?' AND topic = 'Anàlisi (Integrals i Àrees)';

UPDATE questions SET
  statement_es = 'Si derivamos una función de costes $C(x)$ para hallar el coste marginal, y a continuación integramos ese resultado, ¿qué obtenemos finalmente?',
  option_a_es = 'La asíntota del coste.',
  option_b_es = 'Los beneficios.',
  option_c_es = 'La función de costes original, $C(x)$, excepto por un término constante perdido en la derivación.',
  option_d_es = 'Cero.',
  feedback_es = 'Al encadenar una derivada con una integral se anula el efecto operativo (como elevar al cuadrado y después hacer la raíz). Aun así, al derivar se borran los costes fijos (las constantes numéricas sueltas), y al reintegrar, esos costes fijos quedan enmascarados bajo la "$C$" de la constante de integración.'
WHERE statement = 'Si derivem una funció de costos $C(x)$ per trobar el cost marginal, i tot seguit, integrem aquest resultat, què obtenim finalment?' AND topic = 'Anàlisi (Integrals i Àrees)';
