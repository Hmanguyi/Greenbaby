import UIKit
import AVFoundation
class CameraView: UIView {
    private var captureSession: AVCaptureSession?
    private var photoOutput: AVCapturePhotoOutput?
    private var previewLayer: AVCaptureVideoPreviewLayer?
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initializeCamera()
        addCaptureButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initializeCamera()
        addCaptureButton()
    }
    
    private func initializeCamera() {
        // Create capture session
        captureSession = AVCaptureSession()
        captureSession?.sessionPreset = .photo
        
        guard let camera = AVCaptureDevice.default(for: .video) else {
            print("No camera available.")
            return
        }
        
        do {
            let input = try AVCaptureDeviceInput(device: camera)
            if captureSession?.canAddInput(input) == true {
                captureSession?.addInput(input)
            }
            
            // Add photo output
            photoOutput = AVCapturePhotoOutput()
            if captureSession?.canAddOutput(photoOutput!) == true {
                captureSession?.addOutput(photoOutput!)
            }
            
            // Add preview layer
            previewLayer = AVCaptureVideoPreviewLayer(session: captureSession!)
            previewLayer?.videoGravity = .resizeAspectFill
            previewLayer?.frame = self.bounds
            self.layer.addSublayer(previewLayer!)
            
            captureSession?.startRunning()
        } catch {
            print("Error setting up camera: \(error.localizedDescription)")
        }
    }
    
    private func addCaptureButton() {
        // Register custom font (ensure this function is implemented elsewhere in your code)
        registerFont(withName: "ByteBounce", fileExtension: "ttf")
        
        let captureButton = UIButton(type: .system)
        captureButton.setTitle("pic", for: .normal)
        captureButton.backgroundColor = UIColor.green.withAlphaComponent(0.7)
        captureButton.setTitleColor(.white, for: .normal)
        captureButton.layer.cornerRadius = 30
        captureButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Set custom font for the button's title
        if let customFont = UIFont(name: "ByteBounce", size: 40) { // Adjust the size as needed
            captureButton.titleLabel?.font = customFont
        } else {
            print("Failed to load custom font: ByteBounce")
        }
        
        self.addSubview(captureButton)
        
        // Button constraints
        NSLayoutConstraint.activate([
            captureButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            captureButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -50),
            captureButton.widthAnchor.constraint(equalToConstant: 60),
            captureButton.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        // Button action
        captureButton.addTarget(self, action: #selector(capturePhoto), for: .touchUpInside)
    }
    
    @objc private func capturePhoto() {
        guard let photoOutput = photoOutput else { return }
        
        let settings = AVCapturePhotoSettings()
        settings.flashMode = .auto
        
        photoOutput.capturePhoto(with: settings, delegate: self)
    }
}
// MARK: - AVCapturePhotoCaptureDelegate
extension CameraView: AVCapturePhotoCaptureDelegate {
    func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
        guard let imageData = photo.fileDataRepresentation() else {
            print("Error capturing photo: \(String(describing: error?.localizedDescription))")
            return
        }
        
        // Save photo to the photo library
        UIImageWriteToSavedPhotosAlbum(UIImage(data: imageData)!, nil, nil, nil)
        print("Photo captured and saved to photo library.")
    }
}

