pragma solidity 0.5.8;

contract TimeCharterParty1 {
   
    string[] public Owners;
    string public Charterers;
    uint public DateOfCharter;
    uint public Hire;
    uint public FineFactor;
    uint public FineLimit;
    uint public Fine;
    uint public DaysUnpaid;
    uint public PeriodOfCharter;
    struct Vessel {
        string VesselName;
        string Flag;
        uint YearBuilt;
        uint DeadWeight;
        uint GrainCapacity;
        uint SpeedCapability;
    }
    Vessel[] public Vessels;
    string public PlaceofCharter;
    string public DeliveryPort;
    uint public EarliestDeliveryTime;
    uint public CancellationTime;
    uint public FuelQuantityOnDelivery;
    uint public FuelQuantityOnRedelivery;
    uint public FuelPriceOnDelivery;
    uint public FuelPriceOnRedelivery;
    string public OwnersBankAccount;
    uint public MaxPeriodForRequisition;
    uint public LumpsumForHoldCleaningOnRedelivery;
    string public LawAndArbitration;
    string public Comissioner;
    uint public ComissionRate;
    
    constructor(
    string memory _Owners,
    string memory _Charterers,
    uint _DateOfCharter,
    uint HirePerDay,
    uint _PeriodOfCharter,
    string memory _VesselName,
    string memory _PlaceofCharter,
    string memory _DeliveryPort,
    uint _EarliestDeliveryTime,
    uint _CancellationTime,
    uint _FuelQuantityOnDelivery,
    uint _FuelQuantityOnRedelivery,
    uint _FuelPriceOnDelivery,
    uint _FuelPriceOnRedelivery,
    string memory _OwnersBankAccount,
    uint _MaxPeriodForRequisition,
    uint _LumpsumForHoldCleaningOnRedelivery,
    string memory _LawAndArbitration,
    string memory _Comissioner,
    uint _ComissionRate,
    uint _DaysUnpaid ) public {
            
        Owners[1] = _Owners;
        Charterers = _Charterers;
        DateOfCharter = _DateOfCharter;
        FuelPriceOnDelivery =_FuelPriceOnDelivery;
        FuelPriceOnRedelivery = _FuelPriceOnRedelivery;
        OwnersBankAccount = _OwnersBankAccount;
        MaxPeriodForRequisition = _MaxPeriodForRequisition;
        LumpsumForHoldCleaningOnRedelivery = _LumpsumForHoldCleaningOnRedelivery;
        LawAndArbitration = _LawAndArbitration;
        Comissioner = _Comissioner;
        ComissionRate = _ComissionRate;
        DaysUnpaid = _DaysUnpaid;
        PeriodOfCharter = _PeriodOfCharter;
        FineLimit = HirePerDay*45;
        Fine = FineFactor*_DaysUnpaid;
        
        
        if (Fine > FineLimit) {
            require(FineLimit == Fine);
        }
    
    }
    
    function calculodaMulta() public view returns (uint256) {
        return FineFactor*DaysUnpaid;
    }
    
   
    
}
