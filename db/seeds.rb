# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# levels
if Level.all.count == 0
	Level.create([
		{
			name: 'kinder',
		},
		{
			name: 'elementary'
		},
		{
			name: 'high school'
		}
	])
end

if Subject.all.count == 0
	Subject.create([
		{
			name: 'Lengua Española'
		},
		{
			name: 'Matemática'
		},
		{
			name: 'Ciencias Sociales'
		},
		{
			name: 'Ciencias de la Naturaleza'
		},
		{
			name: 'Inglés'
		},
		{
			name: 'Francés'
		},
		{
			name: 'Educación Artística'
		},
		{
			name: 'Educación Física'
		},
		{
			name: 'Formación Integral Humana y Religiosa'
		},
	])
end

if ProjectProblem.find_by(level_id: 2) == 0
	ProjectProblem.create([
		{
			problem: 'La contaminación ambiental por desechos solidos',
			level_id: 2,
		},
		{
			problem: 'La contaminación ambiental por ruido',
			level_id: 2,
		},
		{
			problem: 'La contaminación del agua',
			level_id: 2,
		},
		{
			problem: 'La contaminación del aire',
			level_id: 2,
		},
		{
			problem: 'La indisciplina',
			level_id: 2,
		},
		{
			problem: 'La falta de interés por la matemática',
			level_id: 2,
		},
		{
			problem: 'La falta de interés por la lectura',
			level_id: 2,
		},
		{
			problem: 'La drogadicción',
			level_id: 2,
		},
		{
			problem: 'La deforestación',
			level_id: 2,
		},
		{
			problem: 'La falta de áreas recreativas',
			level_id: 2,
		},
		{
			problem: 'La falta de recursos manipulativos',
			level_id: 2,
		},
		{
			problem: 'La falta de una biblioteca escolar',
			level_id: 2,
		},
	])
end

if FundamentalCompetence.all.count == 0
	FundamentalCompetence.create([
		{
			name: 'Comunicativa'
		},
		{
			name: 'Pensamiento Lógico, Creativo y Crítico'
		},
		{
			name: 'Resolución de Problemas'
		},
		{
			name: 'Científica y Tecnológica'
		},
		{
			name: 'Ética y Ciudadana'
		},
		{
			name: 'Desarrollo Personal y Espiritual'
		},
		{
			name: 'Ambiental y de la Salud'
		},
	])
end

if !GradeCompetence.find_by(level_id: 2)
	# spanish
	require_relative "spanish_seed"

	# math
	require_relative "math_seed"

	# history
	require_relative "history_seed"

	# science
	require_relative "science_seed"

	# english
	require_relative "english_seed"

	# artistic education
	require_relative "artistic_education_seed"

	# physical education
	require_relative "physical_education_seed"

	# religion
	require_relative "religion_seed"
end