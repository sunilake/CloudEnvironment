/*
* Copyright IBM Corporation 2017
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

/// WatsonConversationCredentials class
///
/// Contains the credentials for a Watson Conversation service instance.
public class WatsonConversationCredentials: Credentials {
  // Just a simpler wrapper to provide a type for conversation credentials
}

extension CloudEnv {

  /// Returns an WatsonConversationCredentials object with the corresponding credentials.
  ///
  /// - Parameter name: The key to lookup the environment variable.
  public func getWatsonConversationCredentials(name: String) -> WatsonConversationCredentials? {
    guard let credentials = getDictionary(name: name),
      let username  = credentials["username"] as? String,
      let password  = credentials["password"] as? String,
      let url       = credentials["url"] as? String else {

      return nil
    }

    return WatsonConversationCredentials(username: username, password: password, url: url)
  }

}
