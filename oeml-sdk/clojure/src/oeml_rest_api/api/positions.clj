(ns oeml-rest-api.api.positions
  (:require [oeml-rest-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [oeml-rest-api.specs.severity :refer :all]
            [oeml-rest-api.specs.time-in-force :refer :all]
            [oeml-rest-api.specs.balance-data :refer :all]
            [oeml-rest-api.specs.validation-error :refer :all]
            [oeml-rest-api.specs.position-data :refer :all]
            [oeml-rest-api.specs.cancel-order-single-request :refer :all]
            [oeml-rest-api.specs.message :refer :all]
            [oeml-rest-api.specs.new-order-single :refer :all]
            [oeml-rest-api.specs.ord-status :refer :all]
            [oeml-rest-api.specs.balance :refer :all]
            [oeml-rest-api.specs.execution-report-all-of :refer :all]
            [oeml-rest-api.specs.ord-type :refer :all]
            [oeml-rest-api.specs.position :refer :all]
            [oeml-rest-api.specs.cancel-order-all-request :refer :all]
            [oeml-rest-api.specs.execution-report :refer :all]
            [oeml-rest-api.specs.ord-side :refer :all]
            )
  (:import (java.io File)))


(defn-spec v1-positions-get-with-http-info any?
  "Get positions
  Returns all of your positions."
  ([] (v1-positions-get-with-http-info nil))
  ([{:keys [exchange_id]} (s/map-of keyword? any?)]
   (call-api "/v1/positions" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"exchange_id" exchange_id }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec v1-positions-get (s/coll-of position-spec)
  "Get positions
  Returns all of your positions."
  ([] (v1-positions-get nil))
  ([optional-params any?]
   (let [res (:data (v1-positions-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of position-spec) res st/string-transformer)
        res))))


