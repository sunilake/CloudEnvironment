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

/// AlertNotificationCredentials class
///
/// Contains the credentials for an Alert Notification service instance.
public class AlertNotificationCredentials {

  public let url: String
  public let name: String
  public let password: String

  public init(url: String, name: String, password: String) {
    self.url = url
    self.name = name
    self.password = password
  }
}

extension CloudEnv {

  /// Returns an AlertNotificationCredentials object with the corresponding credentials.
  ///
  /// - Parameter name: The key to lookup the environment variable.
  public func getAlertNotificationCredentials (name: String) -> AlertNotificationCredentials? {

    guard let credentials = getDictionary(name: name),
      let url = credentials["url"] as? String,
      let name = credentials["name"] as? String,
      let password = credentials["password"] as? String else {

      return nil
    }

    return AlertNotificationCredentials(url: url, name: name, password: password)
  }

}
