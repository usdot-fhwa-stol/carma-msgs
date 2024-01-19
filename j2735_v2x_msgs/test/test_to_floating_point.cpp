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

#include <gtest/gtest.h>

#include <j2735_v2x_msgs/msg/acceleration_confidence.hpp>
#include <j2735_v2x_msgs/msg/elevation_confidence.hpp>
#include <j2735_v2x_msgs/msg/heading_confidence.hpp>
#include <j2735_v2x_msgs/msg/position_confidence.hpp>
#include <j2735_v2x_msgs/msg/speed_confidence.hpp>
#include <j2735_v2x_msgs/msg/yaw_rate_confidence.hpp>
#include <j2735_v2x_msgs/to_floating_point.hpp>

TEST(ToFloatingPoint, AccelerationConfidence)
{
  using j2735_v2x_msgs::msg::AccelerationConfidence;

  AccelerationConfidence confidence;

  confidence.acceleration_confidence = AccelerationConfidence::UNAVAILABLE;
  EXPECT_EQ(j2735_v2x_msgs::to_float(confidence), std::nullopt);
  EXPECT_EQ(j2735_v2x_msgs::to_double(confidence), std::nullopt);

  confidence.acceleration_confidence = AccelerationConfidence::ACCL_100_00;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 100.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 100.0);

  confidence.acceleration_confidence = AccelerationConfidence::ACCL_010_00;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 10.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 10.0);

  confidence.acceleration_confidence = AccelerationConfidence::ACCL_005_00;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 5.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 5.0);

  confidence.acceleration_confidence = AccelerationConfidence::ACCL_001_00;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 1.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 1.0);

  confidence.acceleration_confidence = AccelerationConfidence::ACCL_000_10;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 0.1F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 0.1);

  confidence.acceleration_confidence = AccelerationConfidence::ACCL_000_05;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 0.05F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 0.05);

  confidence.acceleration_confidence = AccelerationConfidence::ACCL_000_01;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 0.01F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 0.01);
}

TEST(ToFloatingPoint, ElevationConfidence)
{
  using j2735_v2x_msgs::msg::ElevationConfidence;

  ElevationConfidence confidence;

  confidence.confidence = ElevationConfidence::UNAVAILABLE;
  EXPECT_EQ(j2735_v2x_msgs::to_double(confidence), std::nullopt);
  EXPECT_EQ(j2735_v2x_msgs::to_double(confidence), std::nullopt);

  confidence.confidence = ElevationConfidence::ELEV_500_00;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 500.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 500.0);

  confidence.confidence = ElevationConfidence::ELEV_200_00;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 200.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 200.0);

  confidence.confidence = ElevationConfidence::ELEV_100_00;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 100.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 100.0);

  confidence.confidence = ElevationConfidence::ELEV_050_00;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 50.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 50.0);

  confidence.confidence = ElevationConfidence::ELEV_020_00;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 20.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 20.0);

  confidence.confidence = ElevationConfidence::ELEV_010_00;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 10.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 10.0);

  confidence.confidence = ElevationConfidence::ELEV_005_00;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 5.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 5.0);

  confidence.confidence = ElevationConfidence::ELEV_002_00;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 2.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 2.0);

  confidence.confidence = ElevationConfidence::ELEV_001_00;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 1.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 1.0);

  confidence.confidence = ElevationConfidence::ELEV_000_50;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 0.5F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 0.5);

  confidence.confidence = ElevationConfidence::ELEV_000_20;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 0.2F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 0.2);

  confidence.confidence = ElevationConfidence::ELEV_000_10;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 0.1F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 0.1);

  confidence.confidence = ElevationConfidence::ELEV_000_05;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 0.05F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 0.05);

  confidence.confidence = ElevationConfidence::ELEV_000_02;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 0.02F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 0.02);

  confidence.confidence = ElevationConfidence::ELEV_000_01;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 0.01F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 0.01);
}

TEST(ToFloatingPoint, HeadingConfidence)
{
  using j2735_v2x_msgs::msg::HeadingConfidence;

  HeadingConfidence confidence;

  confidence.confidence = HeadingConfidence::UNAVAILABLE;
  EXPECT_EQ(j2735_v2x_msgs::to_float(confidence), std::nullopt);
  EXPECT_EQ(j2735_v2x_msgs::to_double(confidence), std::nullopt);

  confidence.confidence = HeadingConfidence::PREC_10_DEG;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 10.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 10.0);

  confidence.confidence = HeadingConfidence::PREC_05_DEG;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 5.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 5.0);

  confidence.confidence = HeadingConfidence::PREC_01_DEG;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 1.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 1.0);

  confidence.confidence = HeadingConfidence::PREC_001_DEG;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 0.1F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 0.1);

  confidence.confidence = HeadingConfidence::PREC_0005_DEG;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 0.05F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 0.05);

  confidence.confidence = HeadingConfidence::PREC_0001_DEG;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 0.01F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 0.01);

  confidence.confidence = HeadingConfidence::PREC_000125_DEG;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 0.0125F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 0.0125);
}

TEST(ToFloatingPoint, PositionConfidence)
{
  using j2735_v2x_msgs::msg::PositionConfidence;

  PositionConfidence confidence;

  confidence.confidence = PositionConfidence::UNAVAILABLE;
  EXPECT_EQ(j2735_v2x_msgs::to_float(confidence), std::nullopt);
  EXPECT_EQ(j2735_v2x_msgs::to_double(confidence), std::nullopt);

  confidence.confidence = PositionConfidence::A500M;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 500.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 500.0);

  confidence.confidence = PositionConfidence::A200M;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 200.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 200.0);

  confidence.confidence = PositionConfidence::A100M;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 100.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 100.0);

  confidence.confidence = PositionConfidence::A50M;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 50.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 50.0);

  confidence.confidence = PositionConfidence::A20M;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 20.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 20.0);

  confidence.confidence = PositionConfidence::A10M;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 10.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 10.0);

  confidence.confidence = PositionConfidence::A5M;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 5.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 5.0);

  confidence.confidence = PositionConfidence::A2M;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 2.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 2.0);

  confidence.confidence = PositionConfidence::A1M;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 1.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 1.0);

  confidence.confidence = PositionConfidence::A50CM;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 0.5F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 0.5);

  confidence.confidence = PositionConfidence::A20CM;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 0.2F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 0.2);

  confidence.confidence = PositionConfidence::A10CM;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 0.1F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 0.1);

  confidence.confidence = PositionConfidence::A5CM;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 0.05F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 0.05);

  confidence.confidence = PositionConfidence::A2CM;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 0.02F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 0.02);

  confidence.confidence = PositionConfidence::A1CM;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 0.01F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 0.01);
}

TEST(ToFloatingPoint, SpeedConfidence)
{
  using j2735_v2x_msgs::msg::SpeedConfidence;

  SpeedConfidence confidence;

  confidence.speed_confidence = SpeedConfidence::UNAVAILABLE;
  EXPECT_EQ(j2735_v2x_msgs::to_float(confidence), std::nullopt);
  EXPECT_EQ(j2735_v2x_msgs::to_double(confidence), std::nullopt);

  confidence.speed_confidence = SpeedConfidence::PREC100MS;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 100.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 100.0);

  confidence.speed_confidence = SpeedConfidence::PREC10MS;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 10.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 10.0);

  confidence.speed_confidence = SpeedConfidence::PREC5MS;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 5.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 5.0);

  confidence.speed_confidence = SpeedConfidence::PREC1MS;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 1.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 1.0);

  confidence.speed_confidence = SpeedConfidence::PREC0_1MS;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 0.1F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 0.1);

  confidence.speed_confidence = SpeedConfidence::PREC0_05MS;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 0.05F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 0.05);

  confidence.speed_confidence = SpeedConfidence::PREC0_01MS;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 0.01F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 0.01);
}

TEST(ToFloatingPoint, YawRateConfidence)
{
  using j2735_v2x_msgs::msg::YawRateConfidence;

  YawRateConfidence confidence;

  // The YawRateConfidence message does not define an UNAVAILABLE labeled
  // enumeration value. See https://usdot-carma.atlassian.net/browse/CDAR-733
  // for status updates.
  confidence.yaw_rate_confidence = 0;
  EXPECT_EQ(j2735_v2x_msgs::to_float(confidence), std::nullopt);
  EXPECT_EQ(j2735_v2x_msgs::to_double(confidence), std::nullopt);

  confidence.yaw_rate_confidence = YawRateConfidence::DEG_SEC_100_00;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 100.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 100.0);

  confidence.yaw_rate_confidence = YawRateConfidence::DEG_SEC_010_00;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 10.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 10.0);

  confidence.yaw_rate_confidence = YawRateConfidence::DEG_SEC_005_00;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 5.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 5.0);

  confidence.yaw_rate_confidence = YawRateConfidence::DEG_SEC_001_00;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 1.0F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 1.0);

  confidence.yaw_rate_confidence = YawRateConfidence::DEG_SEC_000_10;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 0.1F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 0.1);

  confidence.yaw_rate_confidence = YawRateConfidence::DEG_SEC_000_05;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 0.05F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 0.05);

  confidence.yaw_rate_confidence = YawRateConfidence::DEG_SEC_000_01;
  EXPECT_FLOAT_EQ(j2735_v2x_msgs::to_float(confidence).value(), 0.01F);
  EXPECT_DOUBLE_EQ(j2735_v2x_msgs::to_double(confidence).value(), 0.01);
}
