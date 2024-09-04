# frozen_string_literal: true

# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module EdgeNetwork
      module V1
        # A Google Edge Cloud zone.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the zone.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the zone was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the zone was last updated.
        # @!attribute [rw] labels
        #   @deprecated This field is deprecated and may be removed in the next major version update.
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Deprecated: not implemented.
        #     Labels as key value pairs.
        # @!attribute [rw] layout_name
        #   @deprecated This field is deprecated and may be removed in the next major version update.
        #   @return [::String]
        #     Deprecated: not implemented.
        #     The deployment layout type.
        class Zone
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Message describing Network object
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The canonical resource name of the network.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the network was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the network was last updated.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels associated with this resource.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. A free-text description of the resource. Max length 1024
        #     characters.
        # @!attribute [rw] mtu
        #   @return [::Integer]
        #     IP (L3) MTU value of the network.
        #     Valid values are: 1500 and 9000.
        #     Default to 1500 if not set.
        class Network
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Message describing Subnet object
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The canonical resource name of the subnet.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the subnet was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the subnet was last updated.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels associated with this resource.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. A free-text description of the resource. Max length 1024
        #     characters.
        # @!attribute [rw] network
        #   @return [::String]
        #     Required. The network that this subnetwork belongs to.
        # @!attribute [rw] ipv4_cidr
        #   @return [::Array<::String>]
        #     The ranges of ipv4 addresses that are owned by this subnetwork.
        # @!attribute [rw] ipv6_cidr
        #   @return [::Array<::String>]
        #     The ranges of ipv6 addresses that are owned by this subnetwork.
        # @!attribute [rw] vlan_id
        #   @return [::Integer]
        #     Optional. VLAN id provided by user. If not specified we assign one
        #     automatically.
        # @!attribute [rw] bonding_type
        #   @return [::Google::Cloud::EdgeNetwork::V1::Subnet::BondingType]
        #     Optional. A bonding type in the subnet creation specifies whether a VLAN
        #     being created will be present on Bonded or Non-Bonded or Both port types.
        #     In addition, this flag is to be used to set the specific network
        #     configuration which clusters can then use for their workloads based on the
        #     bonding choice.
        # @!attribute [r] state
        #   @return [::Google::Cloud::EdgeNetwork::V1::ResourceState]
        #     Output only. Current stage of the resource to the device by config push.
        class Subnet
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Bonding type in the subnet.
          module BondingType
            # Unspecified
            # Bonding type will be unspecified by default and if the user chooses to
            # not specify a bonding type at time of creating the VLAN. This will be
            # treated as mixed bonding where the VLAN will have both bonded and
            # non-bonded connectivity to machines.
            BONDING_TYPE_UNSPECIFIED = 0

            # Multi homed.
            BONDED = 1

            # Single homed.
            NON_BONDED = 2
          end
        end

        # Message describing Interconnect object
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The canonical resource name of the interconnect.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the subnet was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the subnet was last updated.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels associated with this resource.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. A free-text description of the resource. Max length 1024
        #     characters.
        # @!attribute [rw] interconnect_type
        #   @return [::Google::Cloud::EdgeNetwork::V1::Interconnect::InterconnectType]
        #     Optional. Type of interconnect, which takes only the value 'DEDICATED' for
        #     now.
        # @!attribute [r] uuid
        #   @return [::String]
        #     Output only. Unique identifier for the link.
        # @!attribute [r] device_cloud_resource_name
        #   @return [::String]
        #     Output only. Cloud resource name of the switch device.
        # @!attribute [r] physical_ports
        #   @return [::Array<::String>]
        #     Output only. Physical ports (e.g., TenGigE0/0/0/1) that form the
        #     interconnect.
        class Interconnect
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Type of interconnect.
          module InterconnectType
            # Unspecified.
            INTERCONNECT_TYPE_UNSPECIFIED = 0

            # Dedicated Interconnect.
            DEDICATED = 1
          end
        end

        # Message describing InterconnectAttachment object
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The canonical resource name of the interconnect attachment.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the interconnect attachment was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the interconnect attachment was last updated.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels associated with this resource.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. A free-text description of the resource. Max length 1024
        #     characters.
        # @!attribute [rw] interconnect
        #   @return [::String]
        #     Required. The canonical name of underlying Interconnect object that this
        #     attachment's traffic will traverse through. The name is in the form of
        #     `projects/{project}/locations/{location}/zones/{zone}/interconnects/{interconnect}`.
        # @!attribute [rw] network
        #   @return [::String]
        #     Optional. The canonical Network name in the form of
        #     `projects/{project}/locations/{location}/zones/{zone}/networks/{network}`.
        # @!attribute [rw] vlan_id
        #   @return [::Integer]
        #     Required. VLAN id provided by user. Must be site-wise unique.
        # @!attribute [rw] mtu
        #   @return [::Integer]
        #     IP (L3) MTU value of the virtual edge cloud.
        #     Valid values are: 1500 and 9000.
        #     Default to 1500 if not set.
        # @!attribute [r] state
        #   @return [::Google::Cloud::EdgeNetwork::V1::ResourceState]
        #     Output only. Current stage of the resource to the device by config push.
        class InterconnectAttachment
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Message describing Router object
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The canonical resource name of the router.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the router was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the router was last updated.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels associated with this resource.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. A free-text description of the resource. Max length 1024
        #     characters.
        # @!attribute [rw] network
        #   @return [::String]
        #     Required. The canonical name of the network to which this router belongs.
        #     The name is in the form of
        #     `projects/{project}/locations/{location}/zones/{zone}/networks/{network}`.
        # @!attribute [rw] interface
        #   @return [::Array<::Google::Cloud::EdgeNetwork::V1::Router::Interface>]
        #     Router interfaces.
        # @!attribute [rw] bgp_peer
        #   @return [::Array<::Google::Cloud::EdgeNetwork::V1::Router::BgpPeer>]
        #     BGP peers.
        # @!attribute [rw] bgp
        #   @return [::Google::Cloud::EdgeNetwork::V1::Router::Bgp]
        #     BGP information specific to this router.
        # @!attribute [r] state
        #   @return [::Google::Cloud::EdgeNetwork::V1::ResourceState]
        #     Output only. Current stage of the resource to the device by config push.
        # @!attribute [rw] route_advertisements
        #   @return [::Array<::String>]
        #     Optional. A list of CIDRs in IP/Length format to advertise northbound as
        #     static routes from this router.
        class Router
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Router Interface defines the GDCE zone side layer-3 information for
          # building the BGP session.
          # @!attribute [rw] name
          #   @return [::String]
          #     Name of this interface entry. Unique within the Zones resource.
          # @!attribute [rw] ipv4_cidr
          #   @return [::String]
          #     IP address and range of the interface.
          # @!attribute [rw] ipv6_cidr
          #   @return [::String]
          #     IPv6 address and range of the interface.
          # @!attribute [rw] linked_interconnect_attachment
          #   @return [::String]
          #     The canonical name of the linked Interconnect attachment.
          # @!attribute [rw] subnetwork
          #   @return [::String]
          #     The canonical name of the subnetwork resource that this interface
          #     belongs to.
          # @!attribute [rw] loopback_ip_addresses
          #   @return [::Array<::String>]
          #     Create loopback interface in the router when specified.
          #     The number of IP addresses must match the number of TOR devices.
          class Interface
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # BGPPeer defines the peer side layer-3 information for building the BGP
          # session.
          # @!attribute [rw] name
          #   @return [::String]
          #     Name of this BGP peer. Unique within the Zones resource.
          # @!attribute [rw] interface
          #   @return [::String]
          #     Name of the RouterInterface the BGP peer is associated with.
          # @!attribute [rw] interface_ipv4_cidr
          #   @return [::String]
          #     IP range of the interface within Google.
          # @!attribute [rw] interface_ipv6_cidr
          #   @return [::String]
          #     IPv6 range of the interface within Google.
          # @!attribute [rw] peer_ipv4_cidr
          #   @return [::String]
          #     IP range of the BGP interface outside Google.
          # @!attribute [rw] peer_ipv6_cidr
          #   @return [::String]
          #     IPv6 range of the BGP interface outside Google.
          # @!attribute [rw] peer_asn
          #   @return [::Integer]
          #     Peer BGP Autonomous System Number (ASN). Each BGP interface may use
          #     a different value.
          # @!attribute [r] local_asn
          #   @return [::Integer]
          #     Output only. Local BGP Autonomous System Number (ASN).
          #     This field is ST_NOT_REQUIRED because it stores private ASNs, which are
          #     meaningless outside the zone in which they are being used.
          class BgpPeer
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # BGP information specific to this router.
          # @!attribute [rw] asn
          #   @return [::Integer]
          #     Locally assigned BGP ASN.
          # @!attribute [rw] keepalive_interval_in_seconds
          #   @return [::Integer]
          #     The interval in seconds between BGP keepalive messages that are
          #     sent to the peer. Default is 20 with value between 20 and 60.
          class Bgp
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # LinkLayerAddress contains an IP address and corresponding link-layer address.
        # @!attribute [rw] mac_address
        #   @return [::String]
        #     The MAC address of this neighbor.
        # @!attribute [rw] ip_address
        #   @return [::String]
        #     The IP address of this neighbor.
        class LinkLayerAddress
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # SubnetStatus contains detailed and current technical information about this
        # subnet resource.
        # @!attribute [rw] name
        #   @return [::String]
        #     The name of CCFE subnet resource.
        # @!attribute [rw] mac_address
        #   @return [::String]
        #     BVI MAC address.
        # @!attribute [rw] link_layer_addresses
        #   @return [::Array<::Google::Cloud::EdgeNetwork::V1::LinkLayerAddress>]
        #     A list of LinkLayerAddress, describing the ip address and corresponding
        #     link-layer address of the neighbors for this subnet.
        class SubnetStatus
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Diagnostics information about interconnect, contains detailed and current
        # technical information about Google's side of the connection.
        # @!attribute [rw] mac_address
        #   @return [::String]
        #     The MAC address of the Interconnect's bundle interface.
        # @!attribute [rw] link_layer_addresses
        #   @return [::Array<::Google::Cloud::EdgeNetwork::V1::LinkLayerAddress>]
        #     A list of LinkLayerAddress, describing the ip address and corresponding
        #     link-layer address of the neighbors for this interconnect.
        # @!attribute [rw] links
        #   @return [::Array<::Google::Cloud::EdgeNetwork::V1::InterconnectDiagnostics::LinkStatus>]
        #     A list of LinkStatus objects, used to describe the status for each link on
        #     the Interconnect.
        class InterconnectDiagnostics
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Describing the status for each link on the Interconnect.
          # @!attribute [rw] circuit_id
          #   @return [::String]
          #     The unique ID for this link assigned during turn up by Google.
          # @!attribute [rw] lacp_status
          #   @return [::Google::Cloud::EdgeNetwork::V1::InterconnectDiagnostics::LinkLACPStatus]
          #     Describing the state of a LACP link.
          # @!attribute [rw] lldp_statuses
          #   @return [::Array<::Google::Cloud::EdgeNetwork::V1::InterconnectDiagnostics::LinkLLDPStatus>]
          #     A list of LinkLLDPStatus objects, used to describe LLDP status of each
          #     peer for each link on the Interconnect.
          # @!attribute [rw] packet_counts
          #   @return [::Google::Cloud::EdgeNetwork::V1::InterconnectDiagnostics::PacketCounts]
          #     Packet counts specific statistics for this link.
          class LinkStatus
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Containing a collection of interface-related statistics objects.
          # @!attribute [rw] inbound_unicast
          #   @return [::Integer]
          #     The number of packets that are delivered.
          # @!attribute [rw] inbound_errors
          #   @return [::Integer]
          #     The number of inbound packets that contained errors.
          # @!attribute [rw] inbound_discards
          #   @return [::Integer]
          #     The number of inbound packets that were chosen to be discarded even
          #     though no errors had been detected to prevent their being deliverable.
          # @!attribute [rw] outbound_unicast
          #   @return [::Integer]
          #     The total number of packets that are requested be transmitted.
          # @!attribute [rw] outbound_errors
          #   @return [::Integer]
          #     The number of outbound packets that could not be transmitted because of
          #     errors.
          # @!attribute [rw] outbound_discards
          #   @return [::Integer]
          #     The number of outbound packets that were chosen to be discarded even
          #     though no errors had been detected to prevent their being transmitted.
          class PacketCounts
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Describing the status of a LACP link.
          # @!attribute [rw] state
          #   @return [::Google::Cloud::EdgeNetwork::V1::InterconnectDiagnostics::LinkLACPStatus::State]
          #     The state of a LACP link.
          # @!attribute [rw] google_system_id
          #   @return [::String]
          #     System ID of the port on Google's side of the LACP exchange.
          # @!attribute [rw] neighbor_system_id
          #   @return [::String]
          #     System ID of the port on the neighbor's side of the LACP exchange.
          # @!attribute [rw] aggregatable
          #   @return [::Boolean]
          #     A true value indicates that the participant will allow the link to be
          #     used as part of the aggregate.
          #     A false value indicates the link should be used as an individual link.
          # @!attribute [rw] collecting
          #   @return [::Boolean]
          #     If true, the participant is collecting incoming frames on the link,
          #     otherwise false
          # @!attribute [rw] distributing
          #   @return [::Boolean]
          #     When true, the participant is distributing outgoing frames; when false,
          #     distribution is disabled
          class LinkLACPStatus
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # State enum for LACP link.
            module State
              # The default state indicating state is in unknown state.
              UNKNOWN = 0

              # The link is configured and active within the bundle.
              ACTIVE = 1

              # The link is not configured within the bundle, this means the rest of
              # the object should be empty.
              DETACHED = 2
            end
          end

          # Describing a LLDP link.
          # @!attribute [rw] peer_system_name
          #   @return [::String]
          #     The peer system's administratively assigned name.
          # @!attribute [rw] peer_system_description
          #   @return [::String]
          #     The textual description of the network entity of LLDP peer.
          # @!attribute [rw] peer_chassis_id
          #   @return [::String]
          #     The peer chassis component of the endpoint identifier associated with the
          #     transmitting LLDP agent.
          # @!attribute [rw] peer_chassis_id_type
          #   @return [::String]
          #     The format and source of the peer chassis identifier string.
          # @!attribute [rw] peer_port_id
          #   @return [::String]
          #     The port component of the endpoint identifier associated with the
          #     transmitting LLDP agent. If the specified port is an IEEE 802.3 Repeater
          #     port, then this TLV is optional.
          # @!attribute [rw] peer_port_id_type
          #   @return [::String]
          #     The format and source of the peer port identifier string.
          class LinkLLDPStatus
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Describing the current status of a router.
        # @!attribute [rw] network
        #   @return [::String]
        #     The canonical name of the network to which this router belongs.
        # @!attribute [rw] bgp_peer_status
        #   @return [::Array<::Google::Cloud::EdgeNetwork::V1::RouterStatus::BgpPeerStatus>]
        #     A list of BgpPeerStatus objects, describing all BGP peers related to this
        #     router.
        class RouterStatus
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Status of a BGP peer.
          # @!attribute [rw] name
          #   @return [::String]
          #     Name of this BGP peer. Unique within the Routers resource.
          # @!attribute [rw] ip_address
          #   @return [::String]
          #     IP address of the local BGP interface.
          # @!attribute [rw] peer_ip_address
          #   @return [::String]
          #     IP address of the remote BGP interface.
          # @!attribute [rw] status
          #   @return [::Google::Cloud::EdgeNetwork::V1::RouterStatus::BgpPeerStatus::BgpStatus]
          #     The current status of BGP.
          # @!attribute [rw] state
          #   @return [::String]
          #     BGP state as specified in RFC1771.
          # @!attribute [rw] uptime
          #   @return [::String]
          #     Time this session has been up.
          #     Format:
          #      14 years, 51 weeks, 6 days, 23 hours, 59 minutes, 59 seconds
          # @!attribute [rw] uptime_seconds
          #   @return [::Integer]
          #     Time this session has been up, in seconds.
          # @!attribute [rw] prefix_counter
          #   @return [::Google::Cloud::EdgeNetwork::V1::RouterStatus::PrefixCounter]
          #     A collection of counts for prefixes.
          class BgpPeerStatus
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Status of the BGP peer: \\{UP, DOWN}
            module BgpStatus
              # The default status indicating BGP session is in unknown state.
              UNKNOWN = 0

              # The UP status indicating BGP session is established.
              UP = 1

              # The DOWN state indicating BGP session is not established yet.
              DOWN = 2
            end
          end

          # PrefixCounter contains a collection of prefixes related counts.
          # @!attribute [rw] advertised
          #   @return [::Integer]
          #     Number of prefixes advertised.
          # @!attribute [rw] denied
          #   @return [::Integer]
          #     Number of prefixes denied.
          # @!attribute [rw] received
          #   @return [::Integer]
          #     Number of prefixes received.
          # @!attribute [rw] sent
          #   @return [::Integer]
          #     Number of prefixes sent.
          # @!attribute [rw] suppressed
          #   @return [::Integer]
          #     Number of prefixes suppressed.
          # @!attribute [rw] withdrawn
          #   @return [::Integer]
          #     Number of prefixes withdrawn.
          class PrefixCounter
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # ResourceState describes the state the resource.
        # A normal lifecycle of a new resource being created would be: PENDING ->
        # PROVISIONING -> RUNNING. A normal lifecycle of an existing resource being
        # deleted would be: RUNNING -> DELETING. Any failures during processing will
        # result the resource to be in a SUSPENDED state.
        module ResourceState
          # Unspecified state.
          STATE_UNKNOWN = 0

          # The resource is being prepared to be applied to the rack.
          STATE_PENDING = 1

          # The resource has started being applied to the rack.
          STATE_PROVISIONING = 2

          # The resource has been pushed to the rack.
          STATE_RUNNING = 3

          # The resource failed to push to the rack.
          STATE_SUSPENDED = 4

          # The resource is under deletion.
          STATE_DELETING = 5
        end
      end
    end
  end
end
