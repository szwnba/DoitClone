.class public final Lim/doit/pro/ui/component/pullrefresh/Options;
.super Ljava/lang/Object;
.source "Options.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/pullrefresh/Options$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_HEADER_LAYOUT:I = 0x7f030093

.field private static final DEFAULT_REFRESH_MINIMIZE:Z = true

.field private static final DEFAULT_REFRESH_MINIMIZED_DELAY:I = 0x3e8

.field private static final DEFAULT_REFRESH_ON_UP:Z = false

.field private static final DEFAULT_REFRESH_SCROLL_DISTANCE:F = 0.5f


# instance fields
.field environmentDelegate:Lim/doit/pro/ui/component/pullrefresh/EnvironmentDelegate;

.field headerLayout:I

.field headerTransformer:Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;

.field refreshMinimize:Z

.field refreshMinimizeDelay:I

.field refreshOnUp:Z

.field refreshScrollDistance:F


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/Options;->environmentDelegate:Lim/doit/pro/ui/component/pullrefresh/EnvironmentDelegate;

    .line 24
    const v0, 0x7f030093

    iput v0, p0, Lim/doit/pro/ui/component/pullrefresh/Options;->headerLayout:I

    .line 25
    iput-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/Options;->headerTransformer:Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;

    .line 26
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lim/doit/pro/ui/component/pullrefresh/Options;->refreshScrollDistance:F

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/pullrefresh/Options;->refreshOnUp:Z

    .line 28
    const/16 v0, 0x3e8

    iput v0, p0, Lim/doit/pro/ui/component/pullrefresh/Options;->refreshMinimizeDelay:I

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/ui/component/pullrefresh/Options;->refreshMinimize:Z

    .line 21
    return-void
.end method

.method public static create()Lim/doit/pro/ui/component/pullrefresh/Options$Builder;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lim/doit/pro/ui/component/pullrefresh/Options$Builder;

    invoke-direct {v0}, Lim/doit/pro/ui/component/pullrefresh/Options$Builder;-><init>()V

    return-object v0
.end method
