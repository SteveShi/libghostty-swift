import Foundation

public struct ShellDefinition: Sendable {
    public let prompt: String
    public let welcomeMessage: String
    
    public init(prompt: String, welcomeMessage: String) {
        self.prompt = prompt
        self.welcomeMessage = welcomeMessage
    }
}

public struct ShellCommand: Sendable {
    public let name: String
    public let summary: String
    
    public init(name: String, summary: String) {
        self.name = name
        self.summary = summary
    }
}

public final class ShellSession: @unchecked Sendable {
    public init(shell: ShellDefinition) {
    }

    public func start() {
        // Stub implementation
    }
}
