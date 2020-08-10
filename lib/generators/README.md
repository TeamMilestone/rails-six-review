# User-defined Generator

## staffs index generator

어드민 페이지를 만드는데 필요한 boiler plate 코드를 자동으로 생성해줍니다. 생성된 코드는 용도에 맞게 기존의 구현 방식을 보고 수정하면 됩니다.

1. 먼저 모델을 만듭니다 (Optional)
2. 모델을 만들고 나서 아래와 같이 model의 underscore 표기 방식대로 제네레이터 명령의 파라미터로 넘겨줍니다.

```
rails g staffs_index staffs/message
```

## Service Generator

Service 클래스의 boiler plate 코드를 생성하며, Service 객체가 올바르게 동작하는지 검증하기 위한 테스트 코드를 생성하는 역할을 합니다.

1. 어떤 이름의 서비스 클래스를 생성하고 싶은지 제네레이터 명령의 파라미터를 넘겨줍니다. (Service 생략)
2. Service 클래스, Service 클래스에 대한 Rspec 코드가 생상됩니다.

```
rails g service TimelineMerge # (or timeline_merge)
```

## Worker Generator

Sidekiq에서 실행하는 BackgroundJob 처리하는 Worker 클래스의 코드를 생성합니다.

1. 어떤 이름의 워커 클래스를 생성하고 싶은지 제네레이터 명령의 파라미터를 넘겨줍니다. (Worker 생략)
2. Worker 클래스에 대한 코드가 생성됩니다.

```
rails g worker HeicHandler # (or heic_handler)
```