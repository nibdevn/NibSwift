import Foundation
import UIKit

extension UICollectionView {
    public enum UpdateType {
        
        public typealias WithHandler = () -> Void
        public typealias CompletionHandler = (Bool) -> Void
        
        case reload(ReloadType)
        case insert(InsertType)
        case delete(DeleteType)
    }
    
    public enum ReloadType {
        case data
        case section(IndexSet)
        case rows([IndexPath])
    }
    
    public enum InsertType {
        case section(IndexSet)
        case rows([IndexPath])
    }
    
    public enum DeleteType {
        case section(IndexSet)
        case rows([IndexPath])
    }
    
    public enum UpdateAnimationType {
        case none
        case animation(TimeInterval, UIView.AnimationOptions)
    }
    
    private func updating(type: UpdateType, with: UpdateType.WithHandler?, completion: UpdateType.CompletionHandler?) {
        DispatchQueue.main.async { [weak self] in
            switch type {
            case .reload(let reloadType):
                switch reloadType {
                case .data:
                    with?()
                    self?.reloadData()
                    self?.performBatchUpdates({ }, completion: completion)
                case .section(let indexSet):
                    self?.performBatchUpdates({
                        with?()
                        self?.reloadSections(indexSet)
                    }, completion: completion)
                case .rows(let indexPaths):
                    self?.performBatchUpdates({
                        with?()
                        self?.reloadItems(at: indexPaths)
                    }, completion: completion)
                }
            case .insert(let insertType):
                switch insertType {
                case .section(let indexSet):
                    self?.performBatchUpdates({
                        with?()
                        self?.insertSections(indexSet)
                    }, completion: completion)
                case .rows(let indexPaths):
                    self?.performBatchUpdates({
                        with?()
                        self?.insertItems(at: indexPaths)
                    }, completion: completion)
                }
            case .delete(let deleteType):
                switch deleteType {
                case .section(let indexSet):
                    self?.performBatchUpdates({
                        with?()
                        self?.deleteSections(indexSet)
                    }, completion: completion)
                case .rows(let indexPaths):
                    self?.performBatchUpdates({
                        with?()
                        self?.deleteItems(at: indexPaths)
                    }, completion: completion)
                }
            }
        }
    }
    
    public func update(type: UpdateType, animation: UpdateAnimationType = .none, with: @escaping UpdateType.WithHandler, completion: UpdateType.CompletionHandler? = nil) {
        switch animation {
        case .none:
            self.updating(type: type, with: with, completion: completion)
        case .animation(let duration, let options):
            UIView.transition(with: self, duration: duration, options: options, animations: {
                self.updating(type: type, with: with, completion: nil)
            }, completion: completion)
        }
    }
    
    public func update(type: UpdateType, animation: UpdateAnimationType = .none, completion: UpdateType.CompletionHandler? = nil) {
        switch animation {
        case .none:
            self.updating(type: type, with: nil, completion: completion)
        case .animation(let duration, let options):
            UIView.transition(with: self, duration: duration, options: options, animations: {
                self.updating(type: type, with: nil, completion: nil)
            }, completion: completion)
        }
    }
    
    public func reload(_ type: ReloadType, animation: UpdateAnimationType = .none, with: @escaping UpdateType.WithHandler, completion: UpdateType.CompletionHandler? = nil) {
        update(type: .reload(type), animation: animation, with: with, completion: completion)
    }
    
    public func reload(_ type: ReloadType, animation: UpdateAnimationType = .none, completion: UpdateType.CompletionHandler? = nil) {
        update(type: .reload(type), animation: animation, completion: completion)
    }
    
    public func insert(_ type: InsertType, animation: UpdateAnimationType = .none, with: @escaping UpdateType.WithHandler, completion: UpdateType.CompletionHandler? = nil) {
        update(type: .insert(type), animation: animation, with: with, completion: completion)
    }
    
    public func insert(_ type: InsertType, animation: UpdateAnimationType = .none, completion: UpdateType.CompletionHandler? = nil) {
        update(type: .insert(type), animation: animation, completion: completion)
    }
    
    public func delete(_ type: DeleteType, animation: UpdateAnimationType = .none, with: @escaping UpdateType.WithHandler, completion: UpdateType.CompletionHandler? = nil) {
        update(type: .delete(type), animation: animation, with: with, completion: completion)
    }
    
    public func delete(_ type: DeleteType, animation: UpdateAnimationType = .none, completion: UpdateType.CompletionHandler? = nil) {
        update(type: .delete(type), animation: animation, completion: completion)
    }
}
