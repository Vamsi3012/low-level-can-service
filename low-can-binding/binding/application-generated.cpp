#include "application.hpp"
#include "../can/can-decoder.hpp"

application_t::application_t()
	: can_bus_manager_{utils::config_parser_t{"/etc/dev-mapping.conf"}}
	, can_message_set_{
		{std::make_shared<can_message_set_t>(can_message_set_t{0,"vector_demo",
			{ // beginning can_message_definition_ vector
				{std::make_shared<can_message_definition_t>(can_message_definition_t{"hs",0x123,can_message_format_t::STANDARD,frequency_clock_t(5.00000f),true,
					{ // beginning can_signals vector
						{std::make_shared<can_signal_t> (can_signal_t{
							"engine.speed",
							0,
							16,
							1.00000f,
							0.00000,
							0,
							0,
							frequency_clock_t(0.00000f),
							true,
							false,
							{
							},
							false,
							decoder_t::decode_custom,
							nullptr,
							false
						})},
						{std::make_shared<can_signal_t> (can_signal_t{
							"engine.state.switch",
							7,
							1,
							1.00000f,
							0.00000,
							0,
							0,
							frequency_clock_t(0.00000f),
							true,
							false,
							{
							},
							false,
							decoder_t::decode_boolean,
							nullptr,
							false
						})}
					} // end can_signals vector
				})} // end can_message_definition entry
,				{std::make_shared<can_message_definition_t>(can_message_definition_t{"hs",0x321,can_message_format_t::STANDARD,frequency_clock_t(5.00000f),true,
					{ // beginning can_signals vector
						{std::make_shared<can_signal_t> (can_signal_t{
							"hazard.light.switch",
							5,
							1,
							1.00000f,
							0.00000,
							0,
							0,
							frequency_clock_t(0.00000f),
							true,
							false,
							{
							},
							false,
							decoder_t::decode_boolean,
							nullptr,
							false
						})},
						{std::make_shared<can_signal_t> (can_signal_t{
							"light.display",
							7,
							1,
							1.00000f,
							0.00000,
							0,
							0,
							frequency_clock_t(0.00000f),
							true,
							false,
							{
							},
							false,
							decoder_t::decode_boolean,
							nullptr,
							false
						})}
					} // end can_signals vector
				})} // end can_message_definition entry

		}, // end can_message_definition vector
			{ // beginning diagnostic_messages_ vector

			} // end diagnostic_messages_ vector
		})} // end can_message_set entry
	} // end can_message_set vector
{
	for(auto& cms: can_message_set_)
	{
		std::vector<std::shared_ptr<can_message_definition_t> >& can_messages_definition = cms->get_can_message_definition();
		for(auto& cmd : can_messages_definition)
		{
			cmd->set_parent(cms.get());
			std::vector<std::shared_ptr<can_signal_t> >& can_signals = cmd->get_can_signals();
			for(auto& sig: can_signals)
			{
				sig->set_parent(cmd.get());
			}
		}

		std::vector<std::shared_ptr<diagnostic_message_t> >& diagnostic_messages = cms->get_diagnostic_messages();
		for(auto& dm : diagnostic_messages)
		{
			dm->set_parent(cms.get());
		}
	}
		}

const std::string application_t::get_diagnostic_bus() const
{
	return "";
}


