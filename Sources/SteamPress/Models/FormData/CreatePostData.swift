import Vapor

struct CreatePostData: Content {
    let title: String?
    let contents: String?
    let publish: Bool?
    let draft: Bool?
    let slugURL: String?
    let tags: [String]
    #warning("Slug URL")
}
