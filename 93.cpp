#include <string>
#include <string_view>
#include <vector>

class Solution {
public:
  std::vector<std::string> restoreIpAddresses(std::string s) {
    if (s.size() < 4) {
      return {};
    }

    std::vector<std::string> result{};
    ipAddresses({s}, "", 1, result);
    return result;
  }

private:
  void ipAddresses(std::string_view freeOctets, std::string &&ipAddress,
                   int currentOctet, std::vector<std::string> &out) {
    if (currentOctet == 4) {
      if ((freeOctets.size() > 1 && freeOctets[0] == '0') ||
          freeOctets.size() > 3) {
        return;
      }

      auto octet = std::string{freeOctets};
      if (std::stoi(octet) <= 255) {
        out.push_back(ipAddress + "." + octet);
      }
      return;
    }

    for (auto i = 1u; i <= freeOctets.size() - 1; i++) {
      auto octet = std::string{freeOctets.substr(0, i)};
      if (std::stoi(octet) > 255) {
        break;
      }

      ipAddresses(freeOctets.substr(i),
                  ipAddress.empty() ? octet : ipAddress + "." + octet,
                  currentOctet + 1, out);

      if (octet == "0") {
        break;
      }
    }
  }
};