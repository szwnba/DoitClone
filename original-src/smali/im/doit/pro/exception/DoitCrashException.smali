.class public Lim/doit/pro/exception/DoitCrashException;
.super Ljava/lang/Object;
.source "DoitCrashException.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static INSTANCE:Lim/doit/pro/exception/DoitCrashException;


# instance fields
.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getInstance()Lim/doit/pro/exception/DoitCrashException;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lim/doit/pro/exception/DoitCrashException;->INSTANCE:Lim/doit/pro/exception/DoitCrashException;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lim/doit/pro/exception/DoitCrashException;

    invoke-direct {v0}, Lim/doit/pro/exception/DoitCrashException;-><init>()V

    sput-object v0, Lim/doit/pro/exception/DoitCrashException;->INSTANCE:Lim/doit/pro/exception/DoitCrashException;

    .line 26
    :cond_0
    sget-object v0, Lim/doit/pro/exception/DoitCrashException;->INSTANCE:Lim/doit/pro/exception/DoitCrashException;

    return-object v0
.end method

.method private handleException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x1

    .line 63
    if-nez p1, :cond_0

    .line 67
    :goto_0
    return v0

    .line 66
    :cond_0
    invoke-direct {p0, p1}, Lim/doit/pro/exception/DoitCrashException;->saveCrashInfoToDB(Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0
.end method

.method private handleException(Ljava/lang/Throwable;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 55
    if-nez p1, :cond_0

    .line 59
    :goto_0
    return v0

    .line 58
    :cond_0
    invoke-direct {p0, p1, p2}, Lim/doit/pro/exception/DoitCrashException;->saveCrashInfoToDB(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method private saveCrashInfoToDB(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    invoke-static {p1}, Lim/doit/pro/model/AgentError;->buildError(Ljava/lang/Throwable;)Lim/doit/pro/model/AgentError;

    move-result-object v0

    .line 79
    .local v0, "agentException":Lim/doit/pro/model/AgentError;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->agentErrorDao:Lim/doit/pro/db/persist/AgentErrorDao;

    invoke-virtual {v1, v0}, Lim/doit/pro/db/persist/AgentErrorDao;->createAndSaveLog(Lim/doit/pro/model/AgentError;)V

    .line 80
    const/4 v1, 0x0

    return-object v1
.end method

.method private saveCrashInfoToDB(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p1}, Lim/doit/pro/model/AgentError;->buildError(Ljava/lang/Throwable;)Lim/doit/pro/model/AgentError;

    move-result-object v0

    .line 72
    .local v0, "error":Lim/doit/pro/model/AgentError;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lim/doit/pro/model/AgentError;->getNotes()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/AgentError;->setNotes(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->agentErrorDao:Lim/doit/pro/db/persist/AgentErrorDao;

    invoke-virtual {v1, v0}, Lim/doit/pro/db/persist/AgentErrorDao;->createAndSaveLog(Lim/doit/pro/model/AgentError;)V

    .line 74
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public handleException(Landroid/content/Context;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    invoke-direct {p0, p2}, Lim/doit/pro/exception/DoitCrashException;->handleException(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public handleException(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ex"    # Ljava/lang/Throwable;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p2, p3}, Lim/doit/pro/exception/DoitCrashException;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/exception/DoitCrashException;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 31
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 32
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 36
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    invoke-direct {p0, p2}, Lim/doit/pro/exception/DoitCrashException;->handleException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/exception/DoitCrashException;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lim/doit/pro/exception/DoitCrashException;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 42
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method
