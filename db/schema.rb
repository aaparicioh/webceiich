# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_24_184402) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "permission_level"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "adscripciones", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "archivofotograficos", force: :cascade do |t|
    t.string "titulo"
    t.string "descripcion"
    t.string "anio"
    t.string "encargado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "archivos", force: :cascade do |t|
    t.string "titulo"
    t.date "fecha"
    t.text "fuente"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tipo_archivo_id"
    t.index ["tipo_archivo_id"], name: "index_archivos_on_tipo_archivo_id"
  end

  create_table "carrusels", force: :cascade do |t|
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "img_file_name"
    t.string "img_content_type"
    t.integer "img_file_size"
    t.datetime "img_updated_at"
    t.integer "event_id"
    t.string "doc_file_name"
    t.string "doc_content_type"
    t.integer "doc_file_size"
    t.datetime "doc_updated_at"
    t.index ["event_id"], name: "index_carrusels_on_event_id"
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "data_fingerprint"
    t.string "type", limit: 30
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "coleccions", force: :cascade do |t|
    t.string "coleccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "confianzas", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombres"
    t.string "apMat"
    t.string "apPat"
    t.string "area"
    t.string "funcion"
    t.string "telefono1"
    t.string "telefono2"
    t.string "extension1"
    t.string "extension2"
    t.string "fax"
    t.string "foto"
    t.string "cargo"
    t.index ["email"], name: "index_confianzas_on_email", unique: true
    t.index ["reset_password_token"], name: "index_confianzas_on_reset_password_token", unique: true
  end

  create_table "departamentos", force: :cascade do |t|
    t.string "nombre"
    t.string "foto"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documentos", force: :cascade do |t|
    t.string "nombre"
    t.string "tipo"
    t.string "anio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "subtipo"
    t.string "pdf_file_name"
    t.string "pdf_content_type"
    t.integer "pdf_file_size"
    t.datetime "pdf_updated_at"
    t.string "doc_file_name"
    t.string "doc_content_type"
    t.integer "doc_file_size"
    t.datetime "doc_updated_at"
  end

  create_table "events", force: :cascade do |t|
    t.string "titulo"
    t.date "fecha_inicial"
    t.date "fecha_final"
    t.time "hora_inicial"
    t.time "hora_final"
    t.string "lugar"
    t.string "coordinacion"
    t.text "participantes"
    t.string "moderador"
    t.string "transmision_vivo"
    t.string "informes"
    t.string "programa"
    t.string "tipo"
    t.string "colaboracion"
    t.string "temas"
    t.string "subtitulo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "ocurrencia"
    t.string "img_file_name"
    t.string "img_content_type"
    t.integer "img_file_size"
    t.datetime "img_updated_at"
    t.text "actividades_internas"
    t.text "informacion"
    t.string "programa_completo_file_name"
    t.string "programa_completo_content_type"
    t.integer "programa_completo_file_size"
    t.datetime "programa_completo_updated_at"
  end

  create_table "investigadors", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "programa_id"
    t.string "nombres"
    t.string "apPat"
    t.string "apMat"
    t.string "nombramiento"
    t.string "categoria"
    t.string "nivel"
    t.string "definitividad"
    t.string "estimulos"
    t.string "sociedades"
    t.string "adscripcion"
    t.text "historiaAcademica"
    t.string "correo"
    t.string "telefono"
    t.string "extension"
    t.string "humanindex"
    t.string "podcast"
    t.string "foto"
    t.text "curriculo"
    t.text "lineasDeInvestigacion"
    t.text "publicaciones"
    t.text "docencia"
    t.text "asociacionesCientificas"
    t.text "ligasDeInteres"
    t.string "cargo"
    t.string "organosColegiados"
    t.string "cargoConsejoInterno"
    t.string "proyectos"
    t.index ["email"], name: "index_investigadors_on_email", unique: true
    t.index ["programa_id"], name: "index_investigadors_on_programa_id"
    t.index ["reset_password_token"], name: "index_investigadors_on_reset_password_token", unique: true
  end

  create_table "libros", force: :cascade do |t|
    t.string "clave"
    t.string "autor"
    t.string "coordinador"
    t.string "edicion"
    t.string "anio"
    t.string "paginas"
    t.string "isbn"
    t.text "descriptores"
    t.string "precio"
    t.text "sinopsis"
    t.date "fecha_publicacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "img_file_name"
    t.string "img_content_type"
    t.integer "img_file_size"
    t.datetime "img_updated_at"
    t.string "titulo"
    t.text "contenido"
    t.string "imagen"
    t.string "url"
    t.integer "tematica_id"
    t.integer "coleccion_id"
    t.index ["coleccion_id"], name: "index_libros_on_coleccion_id"
    t.index ["tematica_id"], name: "index_libros_on_tematica_id"
  end

  create_table "medio_videos", force: :cascade do |t|
    t.string "url"
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medios", force: :cascade do |t|
    t.string "nombre"
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "novedadesbibliograficas", force: :cascade do |t|
    t.string "mes"
    t.string "anio"
    t.string "nombre_pdf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organocolegiado_investigadors", force: :cascade do |t|
    t.integer "investigador_id"
    t.integer "organocolegiado_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["investigador_id"], name: "index_organocolegiado_investigadors_on_investigador_id"
    t.index ["organocolegiado_id"], name: "index_organocolegiado_investigadors_on_organocolegiado_id"
  end

  create_table "organocolegiados", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "principalelements", force: :cascade do |t|
    t.string "urlImg"
    t.string "urlVideo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "img_file_name"
    t.string "img_content_type"
    t.integer "img_file_size"
    t.datetime "img_updated_at"
  end

  create_table "programas", force: :cascade do |t|
    t.string "nombre"
    t.string "foto"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publicaciones", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "libro_id"
    t.integer "programa_id"
    t.index ["libro_id"], name: "index_publicaciones_on_libro_id"
    t.index ["programa_id"], name: "index_publicaciones_on_programa_id"
  end

  create_table "revistas", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "coleccion"
    t.string "descripcion"
    t.string "img_file_name"
    t.string "img_content_type"
    t.integer "img_file_size"
    t.datetime "img_updated_at"
    t.string "pdf_file_name"
    t.string "pdf_content_type"
    t.integer "pdf_file_size"
    t.datetime "pdf_updated_at"
    t.string "link"
  end

  create_table "tecnicos", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombres"
    t.string "apPat"
    t.string "apMat"
    t.string "nombramiento"
    t.string "categoria"
    t.string "nivel"
    t.string "definitividad"
    t.string "estimulos"
    t.string "sociedades"
    t.string "adscripcion"
    t.string "historiaAcademica"
    t.string "correo"
    t.string "telefono"
    t.string "extension"
    t.string "humanindex"
    t.string "podcast"
    t.string "foto"
    t.text "curriculo"
    t.text "lineasDeInvestigacion"
    t.text "publicaciones"
    t.text "docencia"
    t.text "asociacionesCientificas"
    t.text "ligasDeInteres"
    t.index ["email"], name: "index_tecnicos_on_email", unique: true
    t.index ["reset_password_token"], name: "index_tecnicos_on_reset_password_token", unique: true
  end

  create_table "tematicas", force: :cascade do |t|
    t.string "tematica"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_archivos", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "videos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
