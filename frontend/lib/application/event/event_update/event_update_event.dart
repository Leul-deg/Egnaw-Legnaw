part of 'event_update_bloc.dart';

@freezed
class EventUpdateEvent with _$EventUpdateEvent {
  const factory EventUpdateEvent.initialized() = _Initialized;
  const factory EventUpdateEvent.startTimeChanged(String startTime) = _StartTimeChanged;
  const factory EventUpdateEvent.endTimeChanged(String endTime) = _EndTimeChanged;
  const factory EventUpdateEvent.placeChanged(String place) = _PlaceChanged;
  const factory EventUpdateEvent.availableSeatsChanged(int availableSeats) = _AvailableSeatsChanged;
  const factory EventUpdateEvent.ticketsSoldChanged(int ticketsSold) = _TicketsSoldChanged;
  const factory EventUpdateEvent.descriptionChanged(String description) = _DescriptionChanged;
  const factory EventUpdateEvent.titleChanged(String title) = _TitleChanged;
  const factory EventUpdateEvent.eventUpdatePressed(String eventId) = _EventUpdatePressed;
}