var/const/NCR					=(1<<0)
var/const/NCRCOLONEL			=(1<<0) //Job commented out under Code/Job/Job/NewNCR
var/const/NCRMAJOR			    =(1<<1) //Major now under title of Captain - Naming needs to be tidied up still.
var/const/NCRLIEUTENANT      	=(1<<2)
var/const/NCRSERGEANT        	=(1<<3)
var/const/NCRTROOPER        	=(1<<4)
var/const/NCRRECRUIT        	=(1<<5)
var/const/NCRVETRANGER			=(1<<6)
var/const/NCRRANGER       		=(1<<7)
var/const/NCRRECRANGER			=(1<<8)

var/const/LEGION			=(1<<1)
var/const/LEGLEGAT			=(1<<0) //Job commented out under Code/Job/Job/NewLegion
var/const/LEGCENTURION		=(1<<1)
var/const/LEGVEX			=(1<<2)
var/const/LEGDECAN			=(1<<3)
var/const/LEGVET			=(1<<4)
var/const/LEGIONARY			=(1<<5)

var/const/BOS				=(1<<2)
var/const/PALADIN			=(1<<0)
var/const/KNIGHT			=(1<<1)
var/const/SCRIBE			=(1<<2)
var/const/INITIATE			=(1<<3)

var/const/DEN				=(1<<3)
var/const/SHERIFF			=(1<<0)
var/const/SETTLER			=(1<<1)

var/const/VAULT				=(1<<4)
var/const/OVERSEER			=(1<<0)
var/const/DOCTOR			=(1<<1)
var/const/SCIENTIST			=(1<<2)
var/const/OFFICER			=(1<<3)
var/const/ENGINEER			=(1<<4)
var/const/DWELLER			=(1<<5)
var/const/AI				=(1<<6)
var/const/CYBORG			=(1<<7)

var/const/WASTELAND			=(1<<5)
var/const/CULTLEADER		=(1<<1)
var/const/WASTELANDER		=(1<<2)
var/const/RAIDER			=(1<<3)
var/const/WHORE				=(1<<4)
var/const/PUSHER			=(1<<5)
var/const/PREACHER			=(1<<6)

var/const/ENCLAVE		=(1<<6)
var/const/USCOMMANDER	=(1<<0)
var/const/USMEDIC		=(1<<1)
var/const/USPRIVATE		=(1<<2)
var/const/USSCIENTIST	=(1<<3)
var/const/USENGINEER	=(1<<4)
var/const/USCOLONIST	=(1<<5)

var/list/assistant_occupations = list()

var/list/wasteland_occupations = list(
	"Wastelander",
	"Raider",
	"Whore",
	"Pusher",
	"Preacher"
)

var/list/legion_positions = list(
	//"Legat",
	"Legion Centurion",
	"Legion Vexillarius",
	"Legion Decanus",
	"Veteran Legionnaire",
	"Legionnaire Recruit"
)

var/list/ncr_positions = list(
	"NCR Colonel",
	"NCR Major",
	"NCR Lieutenant",
	"NCR Sergeant",
	"NCR Trooper",
	"NCR Recruit",
	"NCR Veteran Ranger",
	"NCR Ranger",
	"NCR Recruit Ranger"
)

var/list/vault_occupations = list(
	"Overseer",
	"Engineer",
	"Doctor",
	"Officer",
	"Scientist",
	"Dweller"
)

var/list/bos_occupations = list(
	"BOS Paladin",
	"BOS Knight",
	"BOS Scribe",
	"BOS Initiate"
)

var/list/den_occupations = list(
	"Sheriff",
	"Settler"
)

var/list/enclave_occupations = list()

var/list/command_positions = list()


var/list/engineering_positions = list()


var/list/medical_positions = list()


var/list/science_positions = list()


var/list/supply_positions = list()


var/list/civilian_positions = list()


var/list/security_positions = list()

var/list/service_positions = list()

var/list/support_positions = list()


var/list/nonhuman_positions = list(
	//"AI",
	//"Cyborg",
	//"pAI"
)
var/list/whitelisted_positions = list(
	/*
	"Blueshield",
	"Nanotrasen Representative",
	"Barber",
	"Mechanic",
	"Brig Physician",
	"Magistrate",
	"Security Pod Pilot",
	*/
)


/proc/guest_jobbans(var/job)
	return (job in whitelisted_positions)

/proc/get_job_datums()
	var/list/occupations = list()
	var/list/all_jobs = typesof(/datum/job)

	for(var/A in all_jobs)
		var/datum/job/job = new A()
		if(!job)	continue
		occupations += job

	return occupations

/proc/get_alternate_titles(var/job)
	var/list/jobs = get_job_datums()
	var/list/titles = list()

	for(var/datum/job/J in jobs)
		if(!J)	continue
		if(J.title == job)
			titles = J.alt_titles

	return titles

var/global/list/exp_jobsmap = list(
	EXP_TYPE_LIVING = list(), // all living mobs
	EXP_TYPE_CREW = list(titles = command_positions | engineering_positions | medical_positions | science_positions | support_positions | supply_positions | security_positions | civilian_positions | list("AI","Cyborg") | whitelisted_positions), // crew positions
	EXP_TYPE_SPECIAL = list(), // antags, ERT, etc
	EXP_TYPE_GHOST = list(), // dead people, observers
	EXP_TYPE_EXEMPT = list() // special grandfather setting
)
