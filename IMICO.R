#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('IMICO_DATA_2018-07-18_0651.csv')
#Setting Labels

label(data$record_id)="Record ID"
label(data$oimicopre)="Número de identificación del respondedor   "
label(data$oimicopre1)="La fecha de hoy  "
label(data$oimicopre2)="Número de identificación del entrevistador  "
label(data$oimicopre3)="¿Cree usted que discutirá con otras personas (por ejemplo, familiares, amigos, compañeros de trabajo, o cualquiera otra gente) lo que es el programa en términos generales?"
label(data$oimicopre4)="¿Cree usted que discutirá con otras personas (por ejemplo, familiares, amigos, compañeros de trabajo, o cualquiera otra gente) cómo el PROGRAMA puede ayudar a la gente?"
label(data$oimicopre5)="¿Cree usted que discutirá con otros empleados lo que necesita la organización hacer para seguir usando EL PROGRAMA en el futuro?"
label(data$oimicopre6)="¿Cree usted que alentará a otras personas fuera de su organización (por ejemplo, familiares, amigos o cualquiera otra persona) a apoyar el PROGRAMA?"
label(data$oimicopre7)="¿Tendrá usted un papel en apoyar directamente al PROGRAMA (Ejemplos, pero no limitado a: ayudar en las solicitudes de transporte, facilitar espacios privados o salas de reuniones, organizar reembolsos por transporte y crédito telefónico, etc.)?"
label(data$oimicopre8)="¿Cree usted que apoyará el uso del PROGRAMA en el futuro?"
label(data$oimicopre9)="¿Cree usted que discutirá con otras personas (por ejemplo, familiares, amigos, compañeros de trabajo, o cualquiera otra gente) cómo el PROGRAMA puede ayudar a las personas con sus problemas de salud mental?"
label(data$oimicopre10)="¿Cree usted que discutirá con otros empleados sobre cómo asegurar el uso continuo del PROGRAMA dentro de su organización?"
label(data$oimicopre11)="¿Cree usted que discutirá la importancia del PROGRAMA con otras personas fuera de su organización?"
label(data$oimicopre12)="¿Cree usted que ayudará para que EL PROGRAMA sea de alta prioridad para la organización en el futuro?"
label(data$oimicopre13)="Si el encuestado responde De ningún modo o Un poco continúe con esta  pregunta:  ¿Por qué no sería de alta prioridad?"
label(data$oimicopre14)="¿Siente usted que su organización se ha beneficiado de prestar el PROGRAMA?"
label(data$oimicopre15)="¿Siente usted que prestar el PROGRAMA es bueno para la reputación de su organización?"
label(data$oimicopre16)="¿Cree usted que prestar el PROGRAMA ha ayudado a su organización a tener éxito?"
label(data$oimicopre17)="¿Cree usted que prestar el PROGRAMA ha ayudado a crear oportunidades para su organización?"
label(data$oimicopre18)="¿Le gusta que su organización preste EL PROGRAMA?"
label(data$oimicopre19)="Dadas las otras necesidades de la gente, ¿vale la pena asignar el dinero y el tiempo necesario al PROGRAMA?"
label(data$oimicopre20)="¿El PROGRAMA encaja con los valores culturales de las personas con las que trabaja su organización?"
label(data$oimicopre21)="¿Es el PROGRAMA compatible con la cultura masculina en su país?"
label(data$oimicopre22)="¿Es el PROGRAMA compatible con la cultura femenina en su país?"
label(data$oimicopre23)="¿Cree usted que El PROGRAMA será una buena manera de abordar los problemas de salud mental de los pacientes?"
label(data$oimicopre24)="¿Cree usted que el programa será útil para los problemas de salud mental de los pacientes que necesitan este tipo de servicio?"
label(data$oimicopre25)="¿Cree usted que El PROGRAMA ayudará a los pacientes a sentirse mejor?"
label(data$oimicopre26)="¿Cree usted que El PROGRAMA es probable que sea efectivo para los pacientes en otras partes del país?"
label(data$oimicopre27)="¿El PROGRAMA encaja con las metas de su organización?"
label(data$oimicopre28)="¿Cree usted que EL PROGRAMA encajará con el funcionamiento de su organización?"
label(data$oimicopre29)="¿Cree usted que su organización podrá prestar EL PROGRAMA sin afectar negativamente a otros servicios?"
label(data$oimicopre30)="¿Cree usted que prestar el PROGRAMA será una prioridad para los líderes de su organización?"
label(data$oimicopre31)="¿[La intervención] es útil para qué tipo de problemas?"
label(data$oimicopre32)="¿Ha habido un estudio que demuestre que [la intervención] es efectiva para los problemas de salud mental para los adultos de Colombia?"
label(data$oimicopre33)="[La intervención] es cuál de los siguientes ..."
label(data$oimicopre34)="¿[La intervención] enfoca en los pensamientos, sentimientos y comportamientos?"
label(data$oimicopre35)="¿Cree usted que en su organización el tiempo total del médico  disponible para implementar el PROGRAMA será suficiente?"
label(data$oimicopre36)="¿Cree usted que en su organización el tiempo total de supervisión disponible para implementar el PROGRAMA será suficiente?"
label(data$oimicopre37)="¿Cree usted que en su organización el tiempo total de apoyo administrativo para implementar el PROGRAMA será suficiente?"
label(data$oimicopre38)="¿Tiene la organización un presupuesto suficiente para implementar EL PROGRAMA?"
label(data$oimicopre39)="¿Usted cree que la organización proporcionará el dinero necesario para el transporte para implementar EL PROGRAMA?"
label(data$oimicopre40)="¿Usted cree que la organización proveerá el equipo necesario (por ejemplo, lápices / bolígrafos / computadora / internet) para implementar EL PROGRAMA?"
label(data$oimicopre41)="¿Cree usted que la organización proporcionará los recursos de comunicación necesarios (por ejemplo, teléfono, tiempo de conversación) para implementar EL PROGRAMA?"
label(data$oimicopre42)="¿La organización tiene suficiente espacio privado para implementar EL PROGRAMA?"
label(data$oimicopre43)="¿Recibe el personal de esta organización su salario a a tiempo?"
label(data$oimicopre44)="¿Cree usted que la organización tendrá suficientes médicos para implementar EL PROGRAMA?"
label(data$oimicopre45)="¿Cree usted que la organización tendrá suficientes profesionales capacitados en el PROGRAMA para atender a quienes buscan servicios?"
label(data$oimicopre46)="¿Cree usted que la organización tendrá suficientes supervisores para implementar EL PROGRAMA?"
label(data$oimicopre47)="¿Cree usted que la organización tendrá suficiente acceso a los instructores del PROGRAMA?"
label(data$oimicopre48)="¿Cree usted que las personas de la comunidad estarán al tanto de que los servicios del PROGRAMA están disponibles?"
label(data$oimicopre49)="¿Cree usted que los clientes que buscan ayuda podrán comenzar EL PROGRAMA con poco tiempo de espera?"
label(data$oimicopre50)="¿Cree usted que la mayoría de la gente en la comunidad buscaría los servicios del PROGRAMA si los necesitaran?"
label(data$oimicopre51)="¿Cree usted que las personas más pobres de la comunidad buscarían los servicios del PROGRAMA si los necesitaran?"
label(data$oimicopre52)="Solo hacer la siguiente pregunta si la respuesta a la pregunta anterior fue  ningún modo o un poco)  ¿Cuáles son las razones por las que no buscarían servicios?"
label(data$oimicopre53)="¿Cree usted que las mujeres buscarían los servicios del PROGRAMA si los necesitaran?"
label(data$oimicopre54)="Solo hacer la siguiente pregunta si la respuesta a la pregunta anterior fue  ningún modo o un poco)  ¿Cuáles son las razones por las que no buscarían servicios?"
label(data$oimicopre55)="¿Cree usted que los hombres buscarían los servicios del PROGRAMA si los necesitaran?"
label(data$oimicopre56)="Solo hacer la siguiente pregunta si la respuesta a la pregunta anterior fue  ningún modo o un poco)  ¿Cuáles son las razones por las que no buscarían servicios?"
label(data$oimicopre58)="¿Cree usted que los padres u otros cuidadores buscarían los servicios del PROGRAMA para sus hijos si los necesitaran?"
label(data$oimicopre57)="Solo hacer la siguiente pregunta si la respuesta a la pregunta anterior fue  ningún modo o un poco)  ¿Cuáles son las razones por las que no buscarían servicios?"
label(data$oimicopre59)="¿Cree usted que los niños sin padres u otros cuidadores buscarían los servicios del PROGRAMA si los necesitaran?"
label(data$oimicopre60)="Solo hacer la siguiente pregunta si la respuesta a la pregunta anterior fue  ningún modo o un poco)  ¿Cuáles son las razones por las que no buscarían servicios?"
label(data$oimicopre61)="¿Quién no buscaría los servicios del PROGRAMA dentro de su comunidad?"
label(data$oimicopre62)="¿Su moral en el trabajo es alta?"
label(data$oimicopre63)="¿Es su carga de trabajo manejable (lo que significa que usted no se siente estresado o con demasiado trabajo)?"
label(data$oimicopre64)="¿Siente que está bien informado sobre las cosas que debe saber dentro de su organización?"
label(data$oimicopre65)="¿Su organización le mantiene bien informado sobre lo que necesita saber para hacer su trabajo?"
label(data$oimicopre66)="Cuándo tiene un problema en el trabajo, ¿sabe a quién acudir para obtener la respuesta?"
label(data$oimicopre67)="¿La organización para la que trabaja promueve su crecimiento profesional?"
label(data$oimicopre68)="¿La organización para la que trabaja es adaptable a sus necesidades?"
label(data$oimicopre69)="¿Está satisfecho con la compensación monetaria que recibe por su trabajo?"
label(data$oimicopre70)="¿Qué tanto le importa la dirección y el éxito de la organización en la que trabaja?"
label(data$oimicopre71)="¿Se ofrecen  suficientes oportunidades de aprendizaje para  usted a través de su organización?"
label(data$oimicopre72)="¿La comunicación entre las personas de su organización es positiva y útil?"
label(data$oimicopre73)="¿El ambiente de trabajo es en general positivo?"
label(data$oimicopre74)="¿Cree usted que hay un alto nivel de cohesión dentro de su organización (por ejemplo, el personal se lleva bien trabajando juntos como un equipo)?"
label(data$oimicopre75)="¿El personal de su organización tiene una gran cantidad de motivación?"
label(data$oimicopre76)="¿Los líderes de su organización tienen estándares de calidad claros para la implementación del PROGRAMA?"
label(data$oimicopre77)="¿Los líderes de su organización tienen un plan para facilitar la implementación del PROGRAMA?"
label(data$oimicopre78)="¿Los líderes han eliminado en su organización los obstáculos a la implementación del PROGRAMA?"
label(data$oimicopre79)="¿Los líderes de su organización saben de qué están hablando cuando se trata del PROGRAMA?"
label(data$oimicopre80)="¿Los líderes de su organización están informados sobre EL PROGRAMA?"
label(data$oimicopre81)="¿Los líderes de su organización son capaces de responder a las preguntas del personal sobre EL PROGRAMA?"
label(data$oimicopre82)="¿Los líderes de su organización apoyan los esfuerzos de los proveedores para usar EL PROGRAMA?"
label(data$oimicopre83)="¿Los líderes de su organización apoyan los esfuerzos de los proveedores para aprender más sobre EL PROGRAMA?"
label(data$oimicopre84)="¿Los líderes de su organización reconocen y aprecian los esfuerzos de los proveedores?"
label(data$oimicopre85)="¿Los líderes de su organización perseveran a través de los altibajos de la implementación del PROGRAMA?"
label(data$oimicopre86)="¿Los líderes de su organización continúan trabajar a pesar de los desafíos de implementar EL PROGRAMA?"
label(data$oimicopre87)="¿Los líderes de su organización abordan de manera efectiva las cuestiones cruciales relacionadas con la implementación del PROGRAMA?"
label(data$oimicopre88)="¿Cree usted que los líderes de su organización son buenos líderes?"
label(data$oimicopre89)="¿Cree usted que es fácil hablar con los líderes de su organización?"
label(data$oimicopre90)="¿Cree usted que los líderes de su organización son confiables?"
label(data$oimicopre91)="¿Cree usted que los líderes de su organización se comportan de manera que obtienen respeto de los miembros del personal?"
label(data$oimicopre92)="¿Los líderes de su organización toman las decisiones apropiadas para ayudar a asegurar el éxito del PROGRAMA?"
label(data$oimicopre93)="¿Los líderes de su organización están abiertos a escuchar ideas que difieren de las suyas?"
label(data$oimicopre94)="¿Los líderes de su organización ayudan a los miembros del personal a ver cómo las metas del programa se alinean con sus metas personales?"
label(data$oimicopre95)="¿Los líderes de su organización hablan acerca de las metas para el futuro del programa?"
label(data$oimicopre96)="¿Los líderes de su organización tienen estrategias para ayudar a alcanzar los objetivos del programa?"
label(data$oimicopre97)="¿Cree usted que el programa PROGRAMA continuará después de que el apoyo externo termine"
label(data$oimicopre98)="Si el encuestado responde NO o QUIZÁS pregunte: ¿Cuáles considera que son las barreras para la sostenibilidad?"
label(data$imico_organization_pre_complete)="Complete?"
label(data$psato1)="¿Las personas influyentes apoyan fuertemente el programa?"
label(data$psato2)="¿El programa tiene personas que lo apoyan tan fuertemente que adquieren recursos para ello?"
label(data$psato3)="¿El programa tiene apoyo de liderazgo dentro de la organización general?"
label(data$psato4)="¿El programa tiene un fuerte apoyo de la comunidad?"
label(data$psato5)="¿Dentro de la organización el programa se conoce  como algo que cuadra bien con los objetivos generales de la organización?"
label(data$psato6)="¿Tiene el programa un fuerte apoyo del gobierno?"
label(data$psato7)="¿Puede el programa continuar por 2 años o más con sus fondos existentes?"
label(data$psato8)="¿La financiación actual para el programa viene de una variedad de fuentes?"
label(data$psato9)="¿La organización está buscando encontrar activamente fondos para continuar el programa?"
label(data$psato10)="¿Tiene la organización estrategias para ayudar a asegurar una financiación sostenida para el programa?"
label(data$psato11)="¿La organización dedica tiempo y recursos del personal para buscar fondos para el programa de organizaciones que apoyan los servicios de la salud mental?"
label(data$psato12)="¿El gobierno actualmente apoya este programa con dinero y / u otros recursos o proporciona fondos / recursos de contrapartida?"
label(data$psato13)="¿Está el gobierno fuertemente interesado  en el éxito del programa?"
label(data$psato14)="¿El gobierno provee apoyo financiero a programas similares?"
label(data$psato15)="¿Las organizaciones comunitarias están comprometidas con el éxito del programa?"
label(data$psato16)="¿Está el gobierno comprometido en el éxito del programa?"
label(data$psato17)="¿Existen otras organizaciones (no comunitarias y no gubernamentales) que están comprometidas en el éxito del programa?"
label(data$psato18)="¿La organización se comunica con los líderes de la comunidad sobre el programa?"
label(data$psato19)="¿Los líderes comunitarios están comprometidos en el programa?"
label(data$psato20)="¿Los miembros de la comunidad afectados por problemas de salud mental apoyan fuertemente el programa?"
label(data$psato21)="¿La comunidad está involucrada en el desarrollo de las metas del programa?"
label(data$psato22)="¿La organización mantiene contacto con las agencias gubernamentales responsables para la política de salud mental y la financiación?"
label(data$psato23)="¿La organización involucra a las agencias gubernamentales en la formación de las metas del programa?"
label(data$psato24)="¿Varias personas en el nivel político del gobierno son entusiastas con la continuación del programa?"
label(data$psato25)="¿La organización mantiene contacto con otras organizaciones responsables para los servicios de la salud mental?"
label(data$psato26)="¿La organización coordina con otras organizaciones de servicios de salud mental cuando planea cuáles servicios ofrecer y para quién?"
label(data$psato27)="¿Existen sistemas de organización para apoyar las diversas necesidades del programa?"
label(data$psato28)="¿La organización tiene espacio adecuado para proveer este programa?"
label(data$psato29)="¿La organización tiene opciones de transporte disponibles según sea necesario para mantener el programa en funcionamiento?"
label(data$psato30)="¿La organización tiene suministros adecuados para proveer este programa?"
label(data$psato31)="¿La organización tiene la capacidad de supervisión adecuada para capacitar y supervisar a los proveedores?"
label(data$psato32)="¿La organización tiene personal adecuado para completar las actividades del programa?"
label(data$psato33)="¿El nivel de rotación del personal es manejable?"
label(data$psato34)="¿La organización tiene estrategias para ayudar a retener al personal?"
label(data$psato35)="¿La organización tiene un sistema para contratar rápidamente nuevo personal para el programa según sea necesario?"
label(data$psato36)="¿La organización tiene un sistema para la formación de personal nuevo para el programa según sea necesario?"
label(data$psato37)="¿El programa está bien integrado dentro de las operaciones de la organización?"
label(data$psato38)="¿Los líderes de la organización manejan con efectividad el dinero necesario para el programa?"
label(data$psato39)="¿Los líderes de la organización manejan eficientemente el personal y otros recursos?"
label(data$psato40)="¿Se evalúa activamente el programa?"
label(data$psato41)="¿Existe un sistema para monitorizar los resultados del programa?"
label(data$psato42)="¿La gente dentro de la organización monitoriza los resultados del cliente (p. ej., síntomas)?"
label(data$psato43)="¿Las personas dentro de la organización monitorizan el número de personas atendidas por el programa?"
label(data$psato44)="¿La gente dentro de la organización monitorizan las actividades clínicas (p. ej., qué se hace en cita con los clientes, supervisión)?"
label(data$psato45)="¿La gente dentro de la organización monitorizan la calidad de los servicios que los clientes reciben?"
label(data$psato46)="¿Utiliza la organización los resultados del programa para guiar la planificación e implementación del programa en el futuro?"
label(data$psato47)="¿Se comparten los resultados de la evaluación del programa con los donantes y otros actores claves?"
label(data$psato48)="¿La organización comparte información sobre los efectos del programa con el público?"
label(data$psato49)="¿Los hallazgos o problemas negativos del programa son investigados y tratados de manera efectiva?"
label(data$psato50)="¿La organización tiene un proceso para mantenerse al día con la información más reciente sobre cuáles programas son efectivos?"
label(data$psato51)="¿La organización monitoriza las necesidades de la comunidad?"
label(data$psato52)="¿La organización tiene un proceso para monitorizar cuáles cambios de programa se necesita hacer?"
label(data$psato53)="¿La organización tiene un proceso para adaptar el programa a los cambios en las necesidades de la comunidad?"
label(data$psato54)="¿La organización tiene un proceso para adaptar el programa a los cambios en las necesidades de los prestadores?"
label(data$psato55)="¿La organización tiene un proceso para adaptar el programa a los cambios en las necesidades de la organización?"
label(data$psato56)="¿La organización tiene un proceso para adaptar el programa a los cambios en las políticas gubernamentales?"
label(data$psato57)="¿La organización tiene un proceso para eliminar partes del programa que son ineficaces y no deberían continuar?"
label(data$psato58)="¿La organización tiene un proceso para adaptar la capacitación para el programa según sea necesario?"
label(data$psato59)="¿La organización tiene un proceso para adaptar la supervisión para el programa según sea necesario?"
label(data$psato60)="¿Los líderes de la organización comunican la necesidad por el programa a otros dentro de la organización?"
label(data$psato61)="¿Los líderes de la organización comunican las ventajas del programa a otros dentro de la organización?"
label(data$psato62)="¿Los líderes de la organización incrementan un conocimiento organizacional más amplio del programa?"
label(data$psato63)="¿Los líderes de la organización articulan eficazmente la visión del programa al personal?"
label(data$psato64)="¿Los líderes de la organización proveen comentarios regulares al personal?"
label(data$psato65)="¿Los líderes de la organización proporcionan actualizaciones regulares sobre el programa a otros dentro de la organización?"
label(data$psato66)="¿La organización tiene estrategias de comunicación para mantener el apoyo público para el programa?"
label(data$psato67)="¿La organización comunica la necesidad del programa al público?"
label(data$psato68)="¿Los líderes de la organización articulan eficazmente la visión del programa al público?"
label(data$psato69)="¿Se divulga el programa de una manera que crea interés?"
label(data$psato70)="¿La organización aumenta la conciencia de la comunidad sobre los temas que el programa aborda?"
label(data$psato71)="¿La organización demuestra el valor del programa a la comunidad?"
label(data$psato72)="¿La organización tiene estrategias de comunicación para mantener el apoyo del gobierno para el programa?"
label(data$psato73)="¿La organización comunica la necesidad para el programa al gobierno?"
label(data$psato74)="¿Los líderes de la organización articulan eficazmente la visión del programa al gobierno?"
label(data$psato75)="¿Se divulga el programa de una manera que crea interés entre los funcionarios gubernamentales?"
label(data$psato76)="¿La organización aumenta la conciencia del gobierno sobre los temas que el programa aborda?"
label(data$psato77)="¿La organización demuestra el valor del programa al gobierno?"
label(data$psato78)="¿La organización tiene estrategias de comunicación para mantener el apoyo de posibles donantes para el programa?"
label(data$psato79)="¿La organización comunica la necesidad del programa a posibles donantes?"
label(data$psato80)="¿Los líderes de la organización articulan eficazmente la visión del programa a posibles donantes?"
label(data$psato81)="¿Se divulga el programa de una manera que crea interés entre posibles donantes?"
label(data$psato82)="¿La organización aumenta la conciencia de posibles donantes sobre los temas que el programa aborda?"
label(data$psato83)="¿Sabe la organización dónde buscar fondos?"
label(data$psato84)="¿La organización planea las futuras necesidades de recursos para el programa?"
label(data$psato85)="¿La organización tiene un plan financiero a largo plazo para el programa?"
label(data$psato86)="¿La organización tiene un plan de sostenibilidad para el programa?"
label(data$psato87)="¿La organización tiene un proceso para abordar los intereses de los sectores interesados en su planificación estratégica?"
label(data$psat_organization_pre_complete)="Complete?"
label(data$city_of_b_staff)="1. Ciudad de nacimiento"
label(data$sex_staff)="2. Sexo (al nacer)"
label(data$race_staff)="3. De acuerdo con su cultura, lugar de residencia o características físicas, usted se reconoce como:"
label(data$ethicity_staff)="4. Identidad étnica"
label(data$education_staff)="5. ¿Cuál es su nivel más alto de educación?"
label(data$datos_sociodemogrficos_staff_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$oimicopre3.factor = factor(data$oimicopre3,levels=c("1","2","3","4","5","6"))
data$oimicopre4.factor = factor(data$oimicopre4,levels=c("1","2","3","4","5","6"))
data$oimicopre5.factor = factor(data$oimicopre5,levels=c("1","2","3","4","5","6"))
data$oimicopre6.factor = factor(data$oimicopre6,levels=c("1","2","3","4","5","6"))
data$oimicopre7.factor = factor(data$oimicopre7,levels=c("1","2","3","4","5","6"))
data$oimicopre8.factor = factor(data$oimicopre8,levels=c("1","2","3","4","5","6"))
data$oimicopre9.factor = factor(data$oimicopre9,levels=c("1","2","3","4","5","6"))
data$oimicopre10.factor = factor(data$oimicopre10,levels=c("1","2","3","4","5","6"))
data$oimicopre11.factor = factor(data$oimicopre11,levels=c("1","2","3","4","5","6"))
data$oimicopre12.factor = factor(data$oimicopre12,levels=c("1","2","3","4","5","6"))
data$oimicopre14.factor = factor(data$oimicopre14,levels=c("1","2","3","4","5","6"))
data$oimicopre15.factor = factor(data$oimicopre15,levels=c("1","2","3","4","5","6"))
data$oimicopre16.factor = factor(data$oimicopre16,levels=c("1","2","3","4","5","6"))
data$oimicopre17.factor = factor(data$oimicopre17,levels=c("1","2","3","4","5","6"))
data$oimicopre18.factor = factor(data$oimicopre18,levels=c("1","2","3","4","5","6"))
data$oimicopre19.factor = factor(data$oimicopre19,levels=c("1","2","3","4","5","6"))
data$oimicopre20.factor = factor(data$oimicopre20,levels=c("1","2","3","4","5","6"))
data$oimicopre21.factor = factor(data$oimicopre21,levels=c("1","2","3","4","5","6"))
data$oimicopre22.factor = factor(data$oimicopre22,levels=c("1","2","3","4","5","6"))
data$oimicopre23.factor = factor(data$oimicopre23,levels=c("1","2","3","4","5","6"))
data$oimicopre24.factor = factor(data$oimicopre24,levels=c("1","2","3","4","5","6"))
data$oimicopre25.factor = factor(data$oimicopre25,levels=c("1","2","3","4","5","6"))
data$oimicopre26.factor = factor(data$oimicopre26,levels=c("1","2","3","4","5","6"))
data$oimicopre27.factor = factor(data$oimicopre27,levels=c("1","2","3","4","5","6"))
data$oimicopre28.factor = factor(data$oimicopre28,levels=c("1","2","3","4","5","6"))
data$oimicopre29.factor = factor(data$oimicopre29,levels=c("1","2","3","4","5","6"))
data$oimicopre30.factor = factor(data$oimicopre30,levels=c("1","2","3","4","5","6"))
data$oimicopre31.factor = factor(data$oimicopre31,levels=c("1","2","3"))
data$oimicopre32.factor = factor(data$oimicopre32,levels=c("1","2","3"))
data$oimicopre33.factor = factor(data$oimicopre33,levels=c("1","2","3"))
data$oimicopre34.factor = factor(data$oimicopre34,levels=c("1","2","3"))
data$oimicopre35.factor = factor(data$oimicopre35,levels=c("1","2","3","4","5","6"))
data$oimicopre36.factor = factor(data$oimicopre36,levels=c("1","2","3","4","5","6"))
data$oimicopre37.factor = factor(data$oimicopre37,levels=c("1","2","3","4","5","6"))
data$oimicopre38.factor = factor(data$oimicopre38,levels=c("1","2","3","4","5","6"))
data$oimicopre39.factor = factor(data$oimicopre39,levels=c("1","2","3","4","5","6"))
data$oimicopre40.factor = factor(data$oimicopre40,levels=c("1","2","3","4","5","6"))
data$oimicopre41.factor = factor(data$oimicopre41,levels=c("1","2","3","4","5","6"))
data$oimicopre42.factor = factor(data$oimicopre42,levels=c("1","2","3","4","5","6"))
data$oimicopre43.factor = factor(data$oimicopre43,levels=c("1","2","3","4","5","6"))
data$oimicopre44.factor = factor(data$oimicopre44,levels=c("1","2","3","4","5","6"))
data$oimicopre45.factor = factor(data$oimicopre45,levels=c("1","2","3","4","5","6"))
data$oimicopre46.factor = factor(data$oimicopre46,levels=c("1","2","3","4","5","6"))
data$oimicopre47.factor = factor(data$oimicopre47,levels=c("1","2","3","4","5","6"))
data$oimicopre48.factor = factor(data$oimicopre48,levels=c("1","2","3","4","5","6"))
data$oimicopre49.factor = factor(data$oimicopre49,levels=c("1","2","3","4","5","6"))
data$oimicopre50.factor = factor(data$oimicopre50,levels=c("1","2","3","4","5","6"))
data$oimicopre51.factor = factor(data$oimicopre51,levels=c("1","2","3","4","5","6"))
data$oimicopre53.factor = factor(data$oimicopre53,levels=c("1","2","3","4","5","6"))
data$oimicopre55.factor = factor(data$oimicopre55,levels=c("1","2","3","4","5","6"))
data$oimicopre58.factor = factor(data$oimicopre58,levels=c("1","2","3","4","5","6"))
data$oimicopre59.factor = factor(data$oimicopre59,levels=c("1","2","3","4","5","6"))
data$oimicopre62.factor = factor(data$oimicopre62,levels=c("1","2","3","4","5","6"))
data$oimicopre63.factor = factor(data$oimicopre63,levels=c("1","2","3","4","5","6"))
data$oimicopre64.factor = factor(data$oimicopre64,levels=c("1","2","3","4","5","6"))
data$oimicopre65.factor = factor(data$oimicopre65,levels=c("1","2","3","4","5","6"))
data$oimicopre66.factor = factor(data$oimicopre66,levels=c("1","2","3","4","5","6"))
data$oimicopre67.factor = factor(data$oimicopre67,levels=c("1","2","3","4","5","6"))
data$oimicopre68.factor = factor(data$oimicopre68,levels=c("1","2","3","4","5","6"))
data$oimicopre69.factor = factor(data$oimicopre69,levels=c("1","2","3","4","5","6"))
data$oimicopre70.factor = factor(data$oimicopre70,levels=c("1","2","3","4","5","6"))
data$oimicopre71.factor = factor(data$oimicopre71,levels=c("1","2","3","4","5","6"))
data$oimicopre72.factor = factor(data$oimicopre72,levels=c("1","2","3","4","5","6"))
data$oimicopre73.factor = factor(data$oimicopre73,levels=c("1","2","3","4","5","6"))
data$oimicopre74.factor = factor(data$oimicopre74,levels=c("1","2","3","4","5","6"))
data$oimicopre75.factor = factor(data$oimicopre75,levels=c("1","2","3","4","5","6"))
data$oimicopre76.factor = factor(data$oimicopre76,levels=c("1","2","3","4","5","6"))
data$oimicopre77.factor = factor(data$oimicopre77,levels=c("1","2","3","4","5","6"))
data$oimicopre78.factor = factor(data$oimicopre78,levels=c("1","2","3","4","5","6"))
data$oimicopre79.factor = factor(data$oimicopre79,levels=c("1","2","3","4","5","6"))
data$oimicopre80.factor = factor(data$oimicopre80,levels=c("1","2","3","4","5","6"))
data$oimicopre81.factor = factor(data$oimicopre81,levels=c("1","2","3","4","5","6"))
data$oimicopre82.factor = factor(data$oimicopre82,levels=c("1","2","3","4","5","6"))
data$oimicopre83.factor = factor(data$oimicopre83,levels=c("1","2","3","4","5","6"))
data$oimicopre84.factor = factor(data$oimicopre84,levels=c("1","2","3","4","5","6"))
data$oimicopre85.factor = factor(data$oimicopre85,levels=c("1","2","3","4","5","6"))
data$oimicopre86.factor = factor(data$oimicopre86,levels=c("1","2","3","4","5","6"))
data$oimicopre87.factor = factor(data$oimicopre87,levels=c("1","2","3","4","5","6"))
data$oimicopre88.factor = factor(data$oimicopre88,levels=c("1","2","3","4","5","6"))
data$oimicopre89.factor = factor(data$oimicopre89,levels=c("1","2","3","4","5","6"))
data$oimicopre90.factor = factor(data$oimicopre90,levels=c("1","2","3","4","5","6"))
data$oimicopre91.factor = factor(data$oimicopre91,levels=c("1","2","3","4","5","6"))
data$oimicopre92.factor = factor(data$oimicopre92,levels=c("1","2","3","4","5","6"))
data$oimicopre93.factor = factor(data$oimicopre93,levels=c("1","2","3","4","5","6"))
data$oimicopre94.factor = factor(data$oimicopre94,levels=c("1","2","3","4","5","6"))
data$oimicopre95.factor = factor(data$oimicopre95,levels=c("1","2","3","4","5","6"))
data$oimicopre96.factor = factor(data$oimicopre96,levels=c("1","2","3","4","5","6"))
data$oimicopre97.factor = factor(data$oimicopre97,levels=c("1","2","3","4","5","6"))
data$imico_organization_pre_complete.factor = factor(data$imico_organization_pre_complete,levels=c("0","1","2"))
data$psato1.factor = factor(data$psato1,levels=c("1","2","3","4","5"))
data$psato2.factor = factor(data$psato2,levels=c("1","2","3","4","5"))
data$psato3.factor = factor(data$psato3,levels=c("1","2","3","4","5"))
data$psato4.factor = factor(data$psato4,levels=c("1","2","3","4","5"))
data$psato5.factor = factor(data$psato5,levels=c("1","2","3","4","5"))
data$psato6.factor = factor(data$psato6,levels=c("1","2","3","4","5"))
data$psato7.factor = factor(data$psato7,levels=c("1","2","3","4","5"))
data$psato8.factor = factor(data$psato8,levels=c("1","2","3","4","5"))
data$psato9.factor = factor(data$psato9,levels=c("1","2","3","4","5"))
data$psato10.factor = factor(data$psato10,levels=c("1","2","3","4","5"))
data$psato11.factor = factor(data$psato11,levels=c("1","2","3","4","5"))
data$psato12.factor = factor(data$psato12,levels=c("1","2","3","4","5"))
data$psato13.factor = factor(data$psato13,levels=c("1","2","3","4","5"))
data$psato14.factor = factor(data$psato14,levels=c("1","2","3","4","5"))
data$psato15.factor = factor(data$psato15,levels=c("1","2","3","4","5"))
data$psato16.factor = factor(data$psato16,levels=c("1","2","3","4","5"))
data$psato17.factor = factor(data$psato17,levels=c("1","2","3","4","5"))
data$psato18.factor = factor(data$psato18,levels=c("1","2","3","4","5"))
data$psato19.factor = factor(data$psato19,levels=c("1","2","3","4","5"))
data$psato20.factor = factor(data$psato20,levels=c("1","2","3","4","5"))
data$psato21.factor = factor(data$psato21,levels=c("1","2","3","4","5"))
data$psato22.factor = factor(data$psato22,levels=c("1","2","3","4","5"))
data$psato23.factor = factor(data$psato23,levels=c("1","2","3","4","5"))
data$psato24.factor = factor(data$psato24,levels=c("1","2","3","4","5"))
data$psato25.factor = factor(data$psato25,levels=c("1","2","3","4","5"))
data$psato26.factor = factor(data$psato26,levels=c("1","2","3","4","5"))
data$psato27.factor = factor(data$psato27,levels=c("1","2","3","4","5"))
data$psato28.factor = factor(data$psato28,levels=c("1","2","3","4","5"))
data$psato29.factor = factor(data$psato29,levels=c("1","2","3","4","5"))
data$psato30.factor = factor(data$psato30,levels=c("1","2","3","4","5"))
data$psato31.factor = factor(data$psato31,levels=c("1","2","3","4","5"))
data$psato32.factor = factor(data$psato32,levels=c("1","2","3","4","5"))
data$psato33.factor = factor(data$psato33,levels=c("1","2","3","4","5"))
data$psato34.factor = factor(data$psato34,levels=c("1","2","3","4","5"))
data$psato35.factor = factor(data$psato35,levels=c("1","2","3","4","5"))
data$psato36.factor = factor(data$psato36,levels=c("1","2","3","4","5"))
data$psato37.factor = factor(data$psato37,levels=c("1","2","3","4","5"))
data$psato38.factor = factor(data$psato38,levels=c("1","2","3","4","5"))
data$psato39.factor = factor(data$psato39,levels=c("1","2","3","4","5"))
data$psato40.factor = factor(data$psato40,levels=c("1","2","3","4","5"))
data$psato41.factor = factor(data$psato41,levels=c("1","2","3","4","5"))
data$psato42.factor = factor(data$psato42,levels=c("1","2","3","4","5"))
data$psato43.factor = factor(data$psato43,levels=c("1","2","3","4","5"))
data$psato44.factor = factor(data$psato44,levels=c("1","2","3","4","5"))
data$psato45.factor = factor(data$psato45,levels=c("1","2","3","4","5"))
data$psato46.factor = factor(data$psato46,levels=c("1","2","3","4","5"))
data$psato47.factor = factor(data$psato47,levels=c("1","2","3","4","5"))
data$psato48.factor = factor(data$psato48,levels=c("1","2","3","4","5"))
data$psato49.factor = factor(data$psato49,levels=c("1","2","3","4","5"))
data$psato50.factor = factor(data$psato50,levels=c("1","2","3","4","5"))
data$psato51.factor = factor(data$psato51,levels=c("1","2","3","4","5"))
data$psato52.factor = factor(data$psato52,levels=c("1","2","3","4","5"))
data$psato53.factor = factor(data$psato53,levels=c("1","2","3","4","5"))
data$psato54.factor = factor(data$psato54,levels=c("1","2","3","4","5"))
data$psato55.factor = factor(data$psato55,levels=c("1","2","3","4","5"))
data$psato56.factor = factor(data$psato56,levels=c("1","2","3","4","5"))
data$psato57.factor = factor(data$psato57,levels=c("1","2","3","4","5"))
data$psato58.factor = factor(data$psato58,levels=c("1","2","3","4","5"))
data$psato59.factor = factor(data$psato59,levels=c("1","2","3","4","5"))
data$psato60.factor = factor(data$psato60,levels=c("1","2","3","4","5"))
data$psato61.factor = factor(data$psato61,levels=c("1","2","3","4","5"))
data$psato62.factor = factor(data$psato62,levels=c("1","2","3","4","5"))
data$psato63.factor = factor(data$psato63,levels=c("1","2","3","4","5"))
data$psato64.factor = factor(data$psato64,levels=c("1","2","3","4","5"))
data$psato65.factor = factor(data$psato65,levels=c("1","2","3","4","5"))
data$psato66.factor = factor(data$psato66,levels=c("1","2","3","4","5"))
data$psato67.factor = factor(data$psato67,levels=c("1","2","3","4","5"))
data$psato68.factor = factor(data$psato68,levels=c("1","2","3","4","5"))
data$psato69.factor = factor(data$psato69,levels=c("1","2","3","4","5"))
data$psato70.factor = factor(data$psato70,levels=c("1","2","3","4","5"))
data$psato71.factor = factor(data$psato71,levels=c("1","2","3","4","5"))
data$psato72.factor = factor(data$psato72,levels=c("1","2","3","4","5"))
data$psato73.factor = factor(data$psato73,levels=c("1","2","3","4","5"))
data$psato74.factor = factor(data$psato74,levels=c("1","2","3","4","5"))
data$psato75.factor = factor(data$psato75,levels=c("1","2","3","4","5"))
data$psato76.factor = factor(data$psato76,levels=c("1","2","3","4","5"))
data$psato77.factor = factor(data$psato77,levels=c("1","2","3","4","5"))
data$psato78.factor = factor(data$psato78,levels=c("1","2","3","4","5"))
data$psato79.factor = factor(data$psato79,levels=c("1","2","3","4","5"))
data$psato80.factor = factor(data$psato80,levels=c("1","2","3","4","5"))
data$psato81.factor = factor(data$psato81,levels=c("1","2","3","4","5"))
data$psato82.factor = factor(data$psato82,levels=c("1","2","3","4","5"))
data$psato83.factor = factor(data$psato83,levels=c("1","2","3","4","5"))
data$psato84.factor = factor(data$psato84,levels=c("1","2","3","4","5"))
data$psato85.factor = factor(data$psato85,levels=c("1","2","3","4","5"))
data$psato86.factor = factor(data$psato86,levels=c("1","2","3","4","5"))
data$psato87.factor = factor(data$psato87,levels=c("1","2","3","4","5"))
data$psat_organization_pre_complete.factor = factor(data$psat_organization_pre_complete,levels=c("0","1","2"))
data$sex_staff.factor = factor(data$sex_staff,levels=c("1","2","3"))
data$race_staff.factor = factor(data$race_staff,levels=c("1","2","3","4","5","6","7","8","9"))
data$ethicity_staff.factor = factor(data$ethicity_staff,levels=c("1","2","3"))
data$education_staff.factor = factor(data$education_staff,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28"))
data$datos_sociodemogrficos_staff_complete.factor = factor(data$datos_sociodemogrficos_staff_complete,levels=c("0","1","2"))

levels(data$oimicopre3.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre4.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre5.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre6.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre7.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre8.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre9.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre10.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre11.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre12.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre14.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre15.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre16.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre17.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre18.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre19.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre20.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre21.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre22.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre23.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre24.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre25.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre26.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre27.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre28.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre29.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre30.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre31.factor)=c("Problemas físicos","Problemas sociales, conductuales y emocionales","Prefiero no responder")
levels(data$oimicopre32.factor)=c("Sí","No","Prefiero no responder")
levels(data$oimicopre33.factor)=c("Medicación","Un programa de asesoramiento basado en la conversación","Prefiero no responder")
levels(data$oimicopre34.factor)=c("Sí","No","Prefiero no responder")
levels(data$oimicopre35.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre36.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre37.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre38.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre39.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre40.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre41.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre42.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre43.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre44.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre45.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre46.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre47.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre48.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre49.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre50.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre51.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre53.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre55.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre58.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre59.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre62.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre63.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre64.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre65.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre66.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre67.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre68.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre69.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre70.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre71.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre72.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre73.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre74.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre75.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre76.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre77.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre78.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre79.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre80.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre81.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre82.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre83.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre84.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre85.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre86.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre87.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre88.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre89.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre90.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre91.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre92.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre93.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre94.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre95.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre96.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$oimicopre97.factor)=c("De ningún modo","Un poco","Una cantidad moderada","Mucho","No lo sé","Prefiero no responder")
levels(data$imico_organization_pre_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$psato1.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato2.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato3.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato4.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato5.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato6.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato7.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato8.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato9.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato10.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato11.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato12.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato13.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato14.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato15.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato16.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato17.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato18.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato19.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato20.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato21.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato22.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato23.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato24.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato25.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato26.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato27.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato28.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato29.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato30.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato31.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato32.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato33.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato34.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato35.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato36.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato37.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato38.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato39.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato40.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato41.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato42.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato43.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato44.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato45.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato46.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato47.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato48.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato49.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato50.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato51.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato52.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato53.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato54.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato55.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato56.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato57.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato58.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato59.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato60.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato61.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato62.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato63.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato64.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato65.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato66.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato67.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato68.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato69.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato70.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato71.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato72.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato73.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato74.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato75.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato76.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato77.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato78.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato79.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato80.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato81.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato82.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato83.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato84.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato85.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato86.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psato87.factor)=c("En absoluto","Un poco","Una cantidad moderada","Mucho","Prefiero no responder")
levels(data$psat_organization_pre_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$sex_staff.factor)=c("Masculino","Femenino","Prefiero no responder")
levels(data$race_staff.factor)=c("Indigena","Palenquero","Raizal","Negro (Afro-colombiano)","Gitano (Rom)","Mestizo","Blanco","Ninguno de los anteriores","Prefiero no responder")
levels(data$ethicity_staff.factor)=c("Hispano (a)/Latino(a)","No Hispano (a)/ No Latino (a)","Prefiero no responder")
levels(data$education_staff.factor)=c("Ninguna","Preescolar","Kindegarten","1er grado","2do grado","3er grado","4to grado","5to grado","6to grado","7mo grado","8vo grado","9no grado","10mo grado","11er grado","Bachillerato","GED","Algunos créditos universitarios, pero menos de 1 año","Diplomado","Licenciatura","Maestría","Título profesional","Doctorado","Un año o más de universidad en un programa de 2 años, sin grado","Un año de universidad en un programa de 4 años, sin grado","Dos años de universidad en un programa de 4 años, sin grado","Tres años o más de universidad en un programa de 4 años, sin grado","Desconocido","Prefiero no responder")
levels(data$datos_sociodemogrficos_staff_complete.factor)=c("Incomplete","Unverified","Complete")
