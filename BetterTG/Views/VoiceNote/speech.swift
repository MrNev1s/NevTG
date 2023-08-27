// speech.swift

import TDLibKit

extension MessageView {
    @ViewBuilder func voiceNoteSpeech(for voiceNote: VoiceNote) -> some View {
        Image(systemName: "a.square")
            .font(.title)
            .matchedGeometryEffect(id: speechId, in: namespace)
            .onTapGesture {
                Task {
                    await viewModel.tdRecognizeSpeech(for: customMessage.message.id)
                }
                
                withAnimation {
                    if let recognition = voiceNote.speechRecognitionResult {
                        switch recognition {
                            case .speechRecognitionResultError(let speechRecognitionResultError):
                                log("Error recognizing words: \(speechRecognitionResultError)")
                                recognizedText = "No words recognized"
                                recognized = true
                            case .speechRecognitionResultText(let speechRecognitionResultText):
                                recognizedText = speechRecognitionResultText.text
                                recognized = true
                            default:
                                break
                        }
                    }
                    
                    recognizeSpeech.toggle()
                }
            }
    }
}
