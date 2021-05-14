import UIKit

final class HomeViewController: UIViewController {
    
    @IBOutlet weak var resultado: UILabel!
    
    @IBOutlet weak var aclabelbtn: UIButton!
    @IBOutlet weak var masmenoslabelbtn: UIButton!
    @IBOutlet weak var porcentajelabelbtn: UIButton!
    
    @IBOutlet weak var entrelabelbtn: UIButton!
    @IBOutlet weak var porlabelbtn: UIButton!
    @IBOutlet weak var maslabelbtn: UIButton!
    @IBOutlet weak var menoslabelbtn: UIButton!
    @IBOutlet weak var iguallabelbtn: UIButton!
    
    @IBOutlet weak var puntolabelbtn: UIButton!
    @IBOutlet weak var cerolabelbtn: UIButton!
    @IBOutlet weak var unolabelbtn: UIButton!
    @IBOutlet weak var doslabelbtn: UIButton!
    @IBOutlet weak var treslabelbtn: UIButton!
    @IBOutlet weak var cuatrolabelbtn: UIButton!
    @IBOutlet weak var cincolabelbtn: UIButton!
    @IBOutlet weak var seislabelbtn: UIButton!
    @IBOutlet weak var sietelabelbtn: UIButton!
    @IBOutlet weak var ocholabelbtn: UIButton!
    @IBOutlet weak var nuevelabelbtn: UIButton!
    
    private var contador: String = "0"
    private var contador2: String = "0"
    private var operacion: String = "+"
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) Has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        aclabelbtn.layer.cornerRadius = 39
        masmenoslabelbtn.layer.cornerRadius = 39
        porcentajelabelbtn.layer.cornerRadius = 39
        entrelabelbtn.layer.cornerRadius = 39
        porlabelbtn.layer.cornerRadius = 39
        maslabelbtn.layer.cornerRadius = 39
        menoslabelbtn.layer.cornerRadius = 39
        iguallabelbtn.layer.cornerRadius = 39
        puntolabelbtn.layer.cornerRadius = 39
        cerolabelbtn.layer.cornerRadius = 39
        unolabelbtn.layer.cornerRadius = 39
        doslabelbtn.layer.cornerRadius = 39
        treslabelbtn.layer.cornerRadius = 39
        cuatrolabelbtn.layer.cornerRadius = 39
        cincolabelbtn.layer.cornerRadius = 39
        seislabelbtn.layer.cornerRadius = 39
        sietelabelbtn.layer.cornerRadius = 39
        ocholabelbtn.layer.cornerRadius = 39
        nuevelabelbtn.layer.cornerRadius = 39
        
    }
    
    // Operaciones
    private func cambiaAC() {
        
    }
    
    @IBAction func acBTN(_ sender: Any) {
        contador = "0"
        contador2 = "0"
        resultado.text = contador
    }
    
    @IBAction func masMenosBTN(_ sender: Any) {
    }
    
    @IBAction func porcentajeBTN(_ sender: Any) {
    }
    
    @IBAction func entreBTN(_ sender: Any) {
        cambiaContador("/")
    }
    
    @IBAction func porBTN(_ sender: Any) {
        cambiaContador("*")
    }
    
    @IBAction func masBTN(_ sender: Any) {
        cambiaContador("+")
    }
    
    @IBAction func menosBTN(_ sender: Any) {
        cambiaContador("-")
    }
    
    @IBAction func igualBTN(_ sender: Any) {
        realizaOperacion()
    }
    
    // Numeros
    @IBAction func nueveBTN(_ sender: Any) {
        mostrorResult("9")
    }
    
    @IBAction func ochoBTN(_ sender: Any) {
        mostrorResult("8")
    }
    
    @IBAction func sieteBTN(_ sender: Any) {
        mostrorResult("7")
    }
    
    @IBAction func seisBTN(_ sender: Any) {
        mostrorResult("6")
    }
    
    @IBAction func cincoBTN(_ sender: Any) {
        mostrorResult("5")
    }
    
    @IBAction func cuatroBTN(_ sender: Any) {
        mostrorResult("4")
    }
    
    @IBAction func tresBTN(_ sender: Any) {
        mostrorResult("3")
    }
    
    @IBAction func dosBTN(_ sender: Any) {
        mostrorResult("2")
    }
    
    @IBAction func unoBTN(_ sender: Any) {
        mostrorResult("1")
    }
    
    @IBAction func ceroBTN(_ sender: Any) {
        mostrorResult("0")
    }
    
    @IBAction func puntoBTN(_ sender: Any) {
        mostrorResult(".")
    }
    
    private func mostrorResult(_ numero: String) {
        if contador == "0" {
            contador = numero
        } else {
            contador += numero
        }
        resultado.text = contador
        
    }
    
    private func cambiaContador(_ op: String) {
        contador2 = contador
        contador = "0"
        operacion = op
        resultado.text = contador
    }
    
    private func realizaOperacion() {
        
        guard let num1 = Int(contador) else { return }
        guard let num2 = Int(contador2) else { return }
        
        
        switch operacion {
            case "+":
                resultado.text = String(num1 + num2)
            case "-":
                resultado.text = String(num1 - num2)
            case "*":
                resultado.text = String(num1 * num2)
            case "/":
                resultado.text = String(num1 / num2)
            default:
                break
        }
        
        contador = "0"
        contador2 = "0"
    }
    
}
