//
//  AudioFiles.swift
//  Hamba
//
//  Created by Péter Sanyó on 23.02.24.
//
import Foundation

/// Enumerates the audio files used in the application, providing a type-safe way to access audio file names and types.
///
/// This enum centralizes the management of audio file resources, ensuring that file names and types are correctly matched
/// and easily accessible throughout the application.
enum AudioFiles: String, CaseIterable, Identifiable {
    case focusLoopCorporateMusic = "focus-loop-corporate-music-114297"
    case afternoonTension = "firstB3at"
    case starDust = "secondLilBeat"
    case hambaVibes = "thirdLilBeat"
    case rendezvous = "rendezvous"

    var fileType: String {
        switch self {
        case .focusLoopCorporateMusic, .afternoonTension, .starDust, .hambaVibes, .rendezvous:
            return "mp3"
        }
    }
    
    var displayName: String {
        switch self {
        case .focusLoopCorporateMusic:
            return "Classic"
        case .afternoonTension:
            return "Focused"
        case .starDust:
            return "Star Dust"
        case .hambaVibes:
            return "Hamba Feels"
        case .rendezvous:
            return "Rendezvous"
        }
    }
    
    var songIcon: String {
        switch self {
        case .focusLoopCorporateMusic:
            return "music.note"
        case .afternoonTension:
            return "moon.dust.fill"
        case .starDust:
            return "fireworks"
        case .hambaVibes:
            return "sun.haze.fill"
        case .rendezvous:
            return "figure.socialdance"
        }
    }
    
    var id: String {
        self.rawValue
    }
}
