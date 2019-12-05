import Vapor

public protocol BlogAdminPresenter: Service {
    func createIndexView(on container: Container, posts: [BlogPost], users: [BlogUser], errors: [String]?, pageInformation: BlogAdminPageInformation) -> EventLoopFuture<View>
    func createPostView(on container: Container, errors: [String]?, title: String?, contents: String?, slugURL: String?, tags: [String]?, isEditing: Bool, post: BlogPost?, isDraft: Bool?, pageInformation: BlogAdminPageInformation) -> EventLoopFuture<View>
    func createUserView(on container: Container, errors: [String]?, name: String?, username: String?, passwordError: Bool, confirmPasswordError: Bool, userID: Int?, profilePicture: String?, twitterHandle: String?, biography: String?, tagline: String?, pageInformation: BlogAdminPageInformation) -> EventLoopFuture<View>
    func createResetPasswordView(on container: Container, errors: [String]?, passwordError: Bool?, confirmPasswordError: Bool?, pageInformation: BlogAdminPageInformation) -> EventLoopFuture<View>
}
