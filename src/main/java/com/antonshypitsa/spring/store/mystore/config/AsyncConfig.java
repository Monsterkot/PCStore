package com.antonshypitsa.spring.store.mystore.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

import java.util.concurrent.Executor;

@Configuration
@EnableAsync
public class AsyncConfig {

    @Bean(name = "taskExecutor")//Spring должен управлять жизненным циклом метода
    // и внедрять его как компонент в контекст приложения
    public Executor taskExecutor() {
        ThreadPoolTaskExecutor executor = new ThreadPoolTaskExecutor();
        executor.setCorePoolSize(2); // Устанавливает количество основных (постоянно работающих) потоков в пуле
        executor.setMaxPoolSize(3); // Устанавливает максимальное количество потоков, которое может быть создано в пуле
        executor.setQueueCapacity(10); // Устанавливает размер очереди для ожидающих задач
        executor.setThreadNamePrefix("Async-"); // Устанавливает префикс для имён потоков в пуле
        executor.initialize();
        return executor;
    }
}
