Rails.application.routes.draw do

  devise_for :admins, :controllers => {registrations: 'admins/registrations', sessions: 'admins/sessions'}
  devise_for :confianzas, controllers: {registrations: 'confianzas/registrations'}
  devise_for :tecnicos, :controllers => {registrations: 'tecnicos/registrations'}
  devise_for :investigadors, :controllers => {registrations: 'investigadors/registrations', sessions: 'investigadors/sessions'}


  resources :organocolegiados
  resources :adscripciones
  resources :archivos
  resources :departamentos

  resources :publicaciones

  resources :principalelements
  get 'principal/administradores'
  get 'principal/index'
  resources :novedadesbibliograficas

  get 'admins/administradores'

  get 'search/index'

  get 'documentosPacto', to:"principal#documentosPacto"

  resources :documentos
  get 'infoCEIICH2019_pdf', to:"acerca#infoCEIICH2019_pdf"


  resources :revistas
  resources :carrusels
  match '/investigadors/curriculo/:id',     to: 'investigadors#curriculo',       via: 'get'
  match '/investigadors/lineasDeInvestigacion/:id',     to: 'investigadors#lineasDeInvestigacion',       via: 'get'
  match '/investigadors/publicaciones/:id',     to: 'investigadors#publicaciones',       via: 'get'
  match '/investigadors/docencia/:id',     to: 'investigadors#docencia',       via: 'get'
  match '/investigadors/asociacionesCientificas/:id',     to: 'investigadors#asociacionesCientificas',       via: 'get'
  match '/investigadors/ligasDeInteres/:id',     to: 'investigadors#ligasDeInteres',       via: 'get'

  match '/tecnicos/curriculo/:id',     to: 'tecnicos#curriculo',       via: 'get'
  match '/tecnicos/lineasDeInvestigacion/:id',     to: 'tecnicos#lineasDeInvestigacion',       via: 'get'
  match '/tecnicos/publicaciones/:id',     to: 'tecnicos#publicaciones',       via: 'get'
  match '/tecnicos/docencia/:id',     to: 'tecnicos#docencia',       via: 'get'
  match '/tecnicos/asociacionesCientificas/:id',     to: 'tecnicos#asociacionesCientificas',       via: 'get'
  match '/tecnicos/ligasDeInteres/:id',     to: 'tecnicos#ligasDeInteres',       via: 'get'



  match '/investigadors/informacion/:id',     to: 'investigadors#show',       via: 'get'
  match '/tecnicos/informacion/:id',     to: 'tecnicos#show',       via: 'get'

  get 'fondo_editorial/novedades'

get 'fondo_editorial/libros', to: 'fondo_editorial#libros', as: :libros_tematica


get 'fondo_editorial/libros_tematica'
get 'fondo_editorial/america_latina'
get 'fondo_editorial/artes_foto_cine_musica'
get 'fondo_editorial/bienes_servicios'
get 'fondo_editorial/ciencia_tecnologia'
get 'fondo_editorial/ciencia_tecnologia_genero'
get 'fondo_editorial/ciencias_sociales'
get 'fondo_editorial/conceptos'
get 'fondo_editorial/democracia_elecciones'
get 'fondo_editorial/desarrollo_local'
get 'fondo_editorial/medio_ambiente'
get 'fondo_editorial/economia'
get 'fondo_editorial/educacion_superior'
get 'fondo_editorial/estado_mexicano'
get 'fondo_editorial/mundo_globalizacion'
get 'fondo_editorial/filosofia'
get 'fondo_editorial/genero'
get 'fondo_editorial/teorias'
get 'fondo_editorial/historia_ciencia'
get 'fondo_editorial/interdiciplina'
get 'fondo_editorial/jornadas_anuales'
get 'fondo_editorial/guerra_paz'
get 'fondo_editorial/literatura'
get 'fondo_editorial/pueblos_indios'
get 'fondo_editorial/matematicas'
get 'fondo_editorial/medios_comunicacion'
get 'fondo_editorial/metodologia'
get 'fondo_editorial/movimientos_sociales'
get 'fondo_editorial/religion'
get 'fondo_editorial/sistemas_complejos'
get 'fondo_editorial/sociologia_juridica'
get 'fondo_editorial/teoria_feminista'
get 'fondo_editorial/futuros'

get 'fondo_editorial/antologia'
get 'fondo_editorial/autores_textos_temas'
get 'fondo_editorial/biblioteca_america_latina'
get 'fondo_editorial/biblioteca_aprenderaprender'
get 'fondo_editorial/aprenderAaprender'
get 'fondo_editorial/entidades_federativas'
get 'fondo_editorial/mexicana_historie'
get 'fondo_editorial/biblioteca_mexico'
get 'fondo_editorial/coleccion_alternativas'
get 'fondo_editorial/ambiente_democracia'
get 'fondo_editorial/cien_tec_hist_mexico'
get 'fondo_editorial/clasicos'
get 'fondo_editorial/coleccion_conceptos'
get 'fondo_editorial/cuadernos_CEIICH_fuentes'
get 'fondo_editorial/cuadernos_CEIICH'
get 'fondo_editorial/cuadernos_CEIICH_seminarios'
get 'fondo_editorial/debate_reflexion'
get 'fondo_editorial/historia_ferroviaria'
get 'fondo_editorial/derecho_sociedad'
get 'fondo_editorial/diversidad_feminista'
get 'fondo_editorial/mundo_actual'
get 'fondo_editorial/mundo_sigloxxi'
get 'fondo_editorial/ensamblar_nos'
get 'fondo_editorial/democracia_mexico'
get 'fondo_editorial/pluralidad_cultural'
get 'fondo_editorial/ciencias_humanidades_sigloxxi'
get 'fondo_editorial/mexico_democracia'
get 'fondo_editorial/mexico_actualidad_perspectivas'
get 'fondo_editorial/pensamiento_critico'
get 'fondo_editorial/posgradoDGEP'
get 'fondo_editorial/prospectiva_global'
get 'fondo_editorial/sociologia_politica'
get 'fondo_editorial/tendencias'
get 'fondo_editorial/teoria_analisis'
get 'fondo_editorial/umbrales_mexico'
get 'fondo_editorial/intersecciones_CONACULTA'
get 'fondo_editorial/estudios_urbanos'
get 'fondo_editorial/foros_debates_ambientales'
get 'fondo_editorial/democracia_mexico_actualidad'

get 'fondo_editorial/libros_coleccion'


get 'fondo_editorial/tematicas'

get 'fondo_editorial/revistas'

get 'fondo_editorial/critica_juridica'
get 'fondo_editorial/mundo_nano'

get 'fondo_editorial/video'

get 'fondo_editorial/repositorio'


get 'fondo_editorial/clasicos'



get 'fondo_editorial/feminismo_alternativasSociales'

get 'fondo_editorial/holocausto'

get 'fondo_editorial/mitos_melancolia'

get 'fondo_editorial/saber_poder'

get 'fondo_editorial/sin_coleccion'

get 'fondo_editorial/trayectorias_academicas'

get 'fondo_editorial/trayectorias_academicas_cubanas'

get 'fondo_editorial/ventasDistribucion'




  match '/medios/podcast', to: 'medios#podcast',    via:'get'

  match '/medios/voces', to: 'medios#voces',    via:'get'
  match '/medios/estedia', to: 'medios#estedia',    via:'get'
  match 'medios/estedia_1', to: 'medios#estedia_1',    via:'get'
  match 'medios/estedia_2', to: 'medios#estedia_2',    via:'get'
  match 'medios/estedia_3', to: 'medios#estedia_3',    via:'get'
  match 'medios/estedia_4', to: 'medios#estedia_4',    via:'get'
  match 'medios/estedia_5', to: 'medios#estedia_5',    via:'get'
  match 'medios/estedia_6', to: 'medios#estedia_6',    via:'get'
  match 'medios/estedia_7', to: 'medios#estedia_7',    via:'get'
  match 'medios/estedia_8', to: 'medios#estedia_8',    via:'get'
  match 'medios/estedia_9', to: 'medios#estedia_9',    via:'get'
  match 'medios/estedia_10', to: 'medios#estedia_10',    via:'get'
  match 'medios/estedia_11', to: 'medios#estedia_11',    via:'get'
  match 'medios/estedia_12', to: 'medios#estedia_12',    via:'get'

  get 'medios/lucia_alvarez_podcast'

  get 'medios/jose_amozurrutia_podcast'

  get 'medios/daniel_cazes_podcast'

  get 'medios/diana_favela_podcast'

  get 'medios/elisa_maass_podcast'

  get 'medios/enrique_contreras_podcast'

  get 'medios/flora_botton_podcast'

  get 'medios/gloria_cabrera_podcast'

  get 'medios/guadalupe_valencia_podcast'

  get 'medios/horacio_cerruti_podcast'

  get 'medios/javier_matus_podcast'

  get 'medios/jorge_gonzalez_podcast'

  get 'medios/jorge_navarrete_podcast'

  get 'medios/jose_gandarilla_podcast'

  get 'medios/leonardo_olivos_podcast'

  get 'medios/lucia_alvarez_podcast'

  get 'medios/maria_garcia_podcast'

  get 'medios/maria_jarquin_podcast'

  get 'medios/maria_ramos_podcast'

  get 'medios/norma_blazquez_podcast'

  get 'medios/oscar_correas_podcast'

  get 'medios/rolando_garcia_podcast'

  get 'medios/rosa_alma_juan_podcast'

  get 'medios/rosa_morales_podcast'

  get 'medios/rosalia_lopez_podcast'

  get 'medios/teresa_sacristan_podcast'

  get 'medios/martha_salgado_podcast'

  get 'medios/victor_flores_podcast'



  resources :medio_videos
  resources :videos
  get 'acerca/direccion'

  get 'acerca/personalAcademicoInvestigacion'
  get 'acerca/personalAcademicoTecnico'


  get 'actividades_academicas/proximasActividades'

  get 'actividades_academicas/agenda'

  get 'actividades_academicas/anteriores'

  get 'actividades_academicas/archivoFotografico'

  get 'actividades_academicas/archivoFotografico_2004'
  get 'actividades_academicas/archivoFotografico_2005'
  get 'actividades_academicas/archivoFotografico_2006'
  get 'actividades_academicas/archivoFotografico_2007'
  get 'actividades_academicas/archivoFotografico_2008'
  get 'actividades_academicas/archivoFotografico_2009'
  get 'actividades_academicas/archivoFotografico_2010'
  get 'actividades_academicas/archivoFotografico_2011'
  get 'actividades_academicas/archivoFotografico_2012'
  get 'actividades_academicas/archivoFotografico_2013'
  get 'actividades_academicas/archivoFotografico_2014'
  get 'actividades_academicas/archivoFotografico_2015'


  resources :archivofotograficos
  get 'docencia/acercaDe'
  get 'docencia/acercaDe_lineasTrabajo'
  get 'docencia/lineasTrabajo'
  get 'docencia/modalidades'
  get 'docencia/actividadesDocentes'
  get 'docencia/educacionContinua'
  get 'docencia/numeralia'


  resources :programas
  get 'departamentos_tecnicos/computo'

  get 'departamentos_tecnicos/computo_personal'

  get 'departamentos_tecnicos/computo_sitiosinteres'

  get 'departamentos_tecnicos/difusion'

  get 'departamentos_tecnicos/informacionDocumentacion'

  get 'departamentos_tecnicos/produccionAudiovisual'

  get 'departamentos_tecnicos/pAV_producciones'

  get 'departamentos_tecnicos/pAV_sitiosinteres'

  get 'departamentos_tecnicos/acceso_abierto'

  get 'departamentos_tecnicos/publicaciones'

  get 'departamentos_tecnicos/ventasydistribuciones'

  get 'departamentos_tecnicos/fondo_editorial'

  get 'departamentos_tecnicos/presencia_medios'

  get 'departamentos_tecnicos/boletines_2009'

  get 'departamentos_tecnicos/boletines_2010'

  get 'departamentos_tecnicos/boletines_2012'

  get 'departamentos_tecnicos/boletines_2013'

  get 'departamentos_tecnicos/gaceta_portal_2009'

  get 'departamentos_tecnicos/gaceta_portal_2010'

  get 'departamentos_tecnicos/gaceta_portal_2011'

  get 'departamentos_tecnicos/gaceta_portal_2012'

  get 'departamentos_tecnicos/gaceta_portal_2013'

  get 'departamentos_tecnicos/gaceta_portal_2014'

  get 'departamentos_tecnicos/gaceta_portal_2015'

  get 'departamentos_tecnicos/otros_2009'

  get 'departamentos_tecnicos/otros_2010'

  get 'departamentos_tecnicos/otros_2011'

  get 'departamentos_tecnicos/otros_2012'

  get 'departamentos_tecnicos/otros_2013'

  get 'departamentos_tecnicos/otros_2014'

  get 'departamentos_tecnicos/otros_2015'

  get 'departamentos_tecnicos/reseña_2009' => 'departamentos_tecnicos#reseña_2009'

  get 'departamentos_tecnicos/reseña_2010' => 'departamentos_tecnicos#reseña_2010'

  get 'departamentos_tecnicos/reseña_2011' => 'departamentos_tecnicos#reseña_2011'

  get 'departamentos_tecnicos/reseña_2012' => 'departamentos_tecnicos#reseña_2012'

  get 'departamentos_tecnicos/reseña_2013' => 'departamentos_tecnicos#reseña_2013'



  get 'acerca/espacioInformativo'
  get 'acerca/informesActividades'
  get 'acerca/numeralia'
  get 'acerca/ubicacion'

  get 'acerca/historia'
  get 'acerca/historiaEng'
  get 'acerca/historiaItal'
  get 'acerca/historiaPort'
  get 'acerca/historiaFr'
  get 'acerca/historiaDtsch'

  get 'acerca/objetivos'
  get 'acerca/objetivosEng'
  get 'acerca/objetivosItal'
  get 'acerca/objetivosPort'
  get 'acerca/objetivosFr'
  get 'acerca/objetivosDtsch'

  get 'acerca/espacio_informativo'
  get 'acerca/procedimientos_internos'
  get 'acerca/programas_financiamiento'
  get 'acerca/docencia'


  match 'actividades/actividadesproximas', to: 'activities#act_prox', via: 'get'
  get 'tecnicos/docencia'
  get 'tecnicos/ligasDeInteres'
  get 'tecnicos/lineasDeInvestigacion'
  get 'tecnicos/publicaciones'
  get 'tecnicos/asociacionesCientificas'
  get 'investigadors/docencia'
  get 'investigadors/ligasDeInteres'
  get 'investigadors/lineasDeInvestigacion'
  get 'investigadors/publicaciones'
  get 'investigadors/asociacionesCientificas'

  get 'investigacion/historiaCiencia'

  get 'investigacion/cienciaTecnologia'

  get 'investigacion/cienciasSocialesLiteratura'

  get 'investigacion/cibercultura'

  get 'investigacion/mundoSigloXXI'

  get 'investigacion/ciudadesGestion'

  get 'investigacion/produccionBienesServicios'

  get 'investigacion/poderSubjetividadCultura'

  get 'investigacion/feminista'

  get 'investigacion/derechoSociedad'

  get 'investigacion/estudiosVisuales'
  resources :libros


  resources :events
  #devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to=>"principal#index"

  match '/medios/transmisionesPasadas', to: 'medios#transmisionesPasadas',    via:'get'
  match '/medios/transmisionesVivo', to: 'medios#transmisionesVivo',    via:'get'
  match '/medios/podcast', to: 'medios#podcast',    via:'get'

  match '/investigadors/informacion/:id',     to: 'investigadors#show',       via: 'get'
  match '/tecnicos/informacion/:id',     to: 'tecnicos#show',       via: 'get'

  resources :medios

  mount Ckeditor::Engine => '/ckeditor'
end
