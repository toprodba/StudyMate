package studyMate.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import studyMate.dto.Events;
import studyMate.mapper.EventsMapper;

@Controller
public class UserScheduleController {
	
	@Autowired EventsMapper eventsMapper;
	
	
	@RequestMapping(value = "/member/user/myScheduleList.do", produces = "application/json; charset=UTF-8",method = RequestMethod.GET)
	public @ResponseBody List<Events> userScheduler(){
		
		return eventsMapper.selectAll();
	}
	
	@RequestMapping(value = "/member/user/myScheduleInsert.do", produces = "application/json; charset=UTF-8", method = RequestMethod.POST)
	public @ResponseBody List<Events> insert(Events event){
		
		Events e = event;
		
		eventsMapper.insertUserSchedule(e);
		
		return eventsMapper.selectAll();
	}
	
	@RequestMapping(value = "/member/user/myScheduleDelete.do", produces = "application/json; charset=UTF-8", method = RequestMethod.GET)
	public @ResponseBody List<Events> delete(@RequestParam("event_id") int event_id){
		
		eventsMapper.deleteByIdx(event_id);
		
		return eventsMapper.selectAll();
		
	}
	
	
}
