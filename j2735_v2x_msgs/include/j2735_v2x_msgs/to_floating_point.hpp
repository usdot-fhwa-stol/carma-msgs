// Copyright 2024 Leidos
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef J2735_V2X_MSGS__TO_FLOATING_POINT_HPP_
#define J2735_V2X_MSGS__TO_FLOATING_POINT_HPP_

#include <optional>

#include "j2735_v2x_msgs/msg/acceleration_confidence.hpp"
#include "j2735_v2x_msgs/msg/elevation_confidence.hpp"
#include "j2735_v2x_msgs/msg/heading_confidence.hpp"
#include "j2735_v2x_msgs/msg/position_confidence.hpp"
#include "j2735_v2x_msgs/msg/speed_confidence.hpp"
#include "j2735_v2x_msgs/msg/yaw_rate_confidence.hpp"

namespace j2735_v2x_msgs
{

namespace detail
{

template <typename FloatingPoint>
auto to_floating_point(const j2735_v2x_msgs::msg::AccelerationConfidence & confidence)
  -> std::optional<FloatingPoint>
{
  switch (confidence.acceleration_confidence) {
    case confidence.UNAVAILABLE:
      return std::nullopt;
    case confidence.ACCL_100_00:
      return FloatingPoint{100.0};
    case confidence.ACCL_010_00:
      return FloatingPoint{10.0};
    case confidence.ACCL_005_00:
      return FloatingPoint{5.0};
    case confidence.ACCL_001_00:
      return FloatingPoint{1.0};
    case confidence.ACCL_000_10:
      return FloatingPoint{0.1};
    case confidence.ACCL_000_05:
      return FloatingPoint{0.05};
    case confidence.ACCL_000_01:
      return FloatingPoint{0.01};
  }

  return std::nullopt;
}

template <typename FloatingPoint>
auto to_floating_point(const j2735_v2x_msgs::msg::ElevationConfidence & confidence)
  -> std::optional<FloatingPoint>
{
  switch (confidence.confidence) {
    case confidence.UNAVAILABLE:
      return std::nullopt;
    case confidence.ELEV_500_00:
      return FloatingPoint{500.0};
    case confidence.ELEV_200_00:
      return FloatingPoint{200.0};
    case confidence.ELEV_100_00:
      return FloatingPoint{100.0};
    case confidence.ELEV_050_00:
      return FloatingPoint{50.0};
    case confidence.ELEV_020_00:
      return FloatingPoint{20.0};
    case confidence.ELEV_010_00:
      return FloatingPoint{10.0};
    case confidence.ELEV_005_00:
      return FloatingPoint{5.0};
    case confidence.ELEV_002_00:
      return FloatingPoint{2.0};
    case confidence.ELEV_001_00:
      return FloatingPoint{1.0};
    case confidence.ELEV_000_50:
      return FloatingPoint{0.50};
    case confidence.ELEV_000_20:
      return FloatingPoint{0.20};
    case confidence.ELEV_000_10:
      return FloatingPoint{0.10};
    case confidence.ELEV_000_05:
      return FloatingPoint{0.05};
    case confidence.ELEV_000_02:
      return FloatingPoint{0.02};
    case confidence.ELEV_000_01:
      return FloatingPoint{0.01};
  }

  return std::nullopt;
}

template <typename FloatingPoint>
auto to_floating_point(const j2735_v2x_msgs::msg::HeadingConfidence & confidence)
  -> std::optional<FloatingPoint>
{
  switch (confidence.confidence) {
    case confidence.UNAVAILABLE:
      return std::nullopt;
    case confidence.PREC_10_DEG:
      return FloatingPoint{10.0};
    case confidence.PREC_05_DEG:
      return FloatingPoint{5.0};
    case confidence.PREC_01_DEG:
      return FloatingPoint{1.0};
    case confidence.PREC_001_DEG:
      return FloatingPoint{0.1};
    case confidence.PREC_0005_DEG:
      return FloatingPoint{0.05};
    case confidence.PREC_0001_DEG:
      return FloatingPoint{0.01};
    case confidence.PREC_000125_DEG:
      return FloatingPoint{0.0125};
  }

  return std::nullopt;
}

template <typename FloatingPoint>
auto to_floating_point(const j2735_v2x_msgs::msg::PositionConfidence & confidence)
  -> std::optional<FloatingPoint>
{
  switch (confidence.confidence) {
    case confidence.UNAVAILABLE:
      return std::nullopt;
    case confidence.A500M:
      return FloatingPoint{500.0};
    case confidence.A200M:
      return FloatingPoint{200.0};
    case confidence.A100M:
      return FloatingPoint{100.0};
    case confidence.A50M:
      return FloatingPoint{50.0};
    case confidence.A20M:
      return FloatingPoint{20.0};
    case confidence.A10M:
      return FloatingPoint{10.0};
    case confidence.A5M:
      return FloatingPoint{5.0};
    case confidence.A2M:
      return FloatingPoint{2.0};
    case confidence.A1M:
      return FloatingPoint{1.0};
    case confidence.A50CM:
      return FloatingPoint{0.50};
    case confidence.A20CM:
      return FloatingPoint{0.20};
    case confidence.A10CM:
      return FloatingPoint{0.10};
    case confidence.A5CM:
      return FloatingPoint{0.05};
    case confidence.A2CM:
      return FloatingPoint{0.02};
    case confidence.A1CM:
      return FloatingPoint{0.01};
  }

  return std::nullopt;
}

template <typename FloatingPoint>
auto to_floating_point(const j2735_v2x_msgs::msg::SpeedConfidence & confidence)
  -> std::optional<FloatingPoint>
{
  switch (confidence.speed_confidence) {
    case confidence.UNAVAILABLE:
      return std::nullopt;
    case confidence.PREC100MS:
      return FloatingPoint{100.0};
    case confidence.PREC10MS:
      return FloatingPoint{10.0};
    case confidence.PREC5MS:
      return FloatingPoint{5.0};
    case confidence.PREC1MS:
      return FloatingPoint{1.0};
    case confidence.PREC0_1MS:
      return FloatingPoint{0.1};
    case confidence.PREC0_05MS:
      return FloatingPoint{0.05};
    case confidence.PREC0_01MS:
      return FloatingPoint{0.01};
  }

  return std::nullopt;
}

template <typename FloatingPoint>
auto to_floating_point(const j2735_v2x_msgs::msg::YawRateConfidence & confidence)
  -> std::optional<FloatingPoint>
{
  switch (confidence.yaw_rate_confidence) {
    // The YawRateConfidence message does not define an UNAVAILABLE labeled
    // enumeration value. See https://usdot-carma.atlassian.net/browse/CDAR-733
    // for status updates.
    case 0:
      return std::nullopt;
    case confidence.DEG_SEC_100_00:
      return FloatingPoint{100.0};
    case confidence.DEG_SEC_010_00:
      return FloatingPoint{10.0};
    case confidence.DEG_SEC_005_00:
      return FloatingPoint{5.0};
    case confidence.DEG_SEC_001_00:
      return FloatingPoint{1.0};
    case confidence.DEG_SEC_000_10:
      return FloatingPoint{0.1};
    case confidence.DEG_SEC_000_05:
      return FloatingPoint{0.05};
    case confidence.DEG_SEC_000_01:
      return FloatingPoint{0.01};
  }

  return std::nullopt;
}

}  // namespace detail

template <typename Confidence>
auto to_float(const Confidence & confidence)
{
  return detail::to_floating_point<float>(confidence);
}

template <typename Confidence>
auto to_double(const Confidence & confidence)
{
  return detail::to_floating_point<double>(confidence);
}

}  // namespace j2735_v2x_msgs

#endif  // J2735_V2X_MSGS__TO_FLOATING_POINT_HPP_
