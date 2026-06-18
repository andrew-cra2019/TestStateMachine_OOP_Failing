TYPE
	E_MachineState :
		(
		STATE_INIT := 0,
		STATE_HOMING := 5,
		STATE_IDLE := 10,
		STATE_STARTING := 20,
		STATE_RUNNING := 30,
		STATE_STOPPING := 40,
		STATE_ERROR := 100
	);
	
	ST_ModuleCommand :
		STRUCT
			Enable		: BOOL;
			Start		: BOOL;
			Stop		: BOOL;
			Reset		: BOOL;
			HomeRequest : BOOL;
			HomeonReset	: BOOL;
	END_STRUCT;	
	
	ST_ModuleStatus :
		STRUCT
			Enabled			: BOOL;
			Busy			: BOOL;
			Homing			: BOOL;
			Starting		: BOOL;
			Running			: BOOL;
			Stopping		: BOOL;
			Homed			: BOOL;
			State			: E_MachineState;
			DelayCounter	: DINT;
	END_STRUCT;

	ST_ModuleDiag :
		STRUCT
			Error			: BOOL;
			Warning			: BOOL;
			AlarmWord		: WORD;
			WarningWord		: WORD;
			ErrorID			: UINT;
	END_STRUCT;
END_TYPE
